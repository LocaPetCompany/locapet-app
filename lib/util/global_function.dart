import 'dart:io';

import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

/// 📦 `GlobalFunction`
///
/// 앱 전역에서 사용되는 공통 UI 함수들을 모아놓은 유틸리티 클래스입니다.
/// 이 클래스는 인스턴스화할 수 없습니다.
///
class GlobalFunction {
  GlobalFunction._();

  /// 전역에서 사용할 수 있는 기본 `AlertDialog`를 표시합니다.
  ///
  /// 현재는 비어있는 기본 다이얼로그를 표시하며, 추후 확장될 수 있습니다.
  ///
  /// [context]: 다이얼로그를 표시할 `BuildContext`입니다.
  ///
  /// 사용 예:
  /// ```dart
  /// GestureDetector(
  ///   onTap: () => GlobalFunction.showGlobalModal(
  ///     context: context,
  ///   ),
  ///   child: Child위젯,
  /// );
  /// ```
  static void showGlobalModal({
    required BuildContext modalContext,
    required String text,
    required VoidCallback onTap,
  }) {
    showDialog(
      context: modalContext,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(text, style: const TextStyle()),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      '확인',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  /// 화면 하단에서 올라오는 공통 `ModalBottomSheet`를 표시합니다.
  ///
  /// 우측 상단에 닫기 버튼이 기본적으로 포함되어 있으며,
  /// `childBuilder`를 통해 내부 컨텐츠를 자유롭게 구성할 수 있습니다.
  ///
  /// [context]: BottomSheet를 표시할 `BuildContext`입니다.
  /// [childBuilder]: BottomSheet 내부에 표시될 위젯을 빌드하는 함수입니다.
  /// [isDismissible]: 배경을 탭했을 때 BottomSheet가 닫히도록 할지 여부입니다. (기본값: true)
  static Future<void> bottomModalSheet({
    required BuildContext bottomModalContext,
    required Widget Function(BuildContext bmsContext) childBuilder,
    bool? isDismissible,
  }) async {
    // showModalBottomSheet를 사용하여 BottomSheet를 표시합니다.
    await showModalBottomSheet(
      isDismissible: isDismissible ?? true,
      backgroundColor: AppColor.grayColor700,
      context: bottomModalContext,
      builder: (BuildContext bottomModalContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        bottomModalContext.pop();
                      },
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
                const Gap(8),
                childBuilder(bottomModalContext),
              ],
            ),
          ),
        );
      },
    );
  }

  /// 🔄 `void showToast()`
  ///
  /// 화면 하단에 짧은 메시지(토스트)를 표시합니다.
  ///
  /// [fluttertoast] 패키지를 사용합니다.
  ///
  /// 사용 예:
  /// ```dart
  /// GlobalFunction.showToast('저장되었습니다.');
  /// ```
  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColor.blackColor.withValues(alpha: 0.8),
      textColor: AppColor.whiteColor,
      fontSize: 16.0,
    );
  }

  /// 디바이스의 파일을 선택할 수 있는 파일 피커(File Picker)를 엽니다.
  ///
  /// 사용자가 파일을 선택하면 해당 파일의 `File` 객체를 반환하고,
  /// 선택을 취소하면 `null`을 반환합니다.
  ///
  /// @return 선택된 파일을 나타내는 `Future<File?>`입니다.
  static Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      return File(result.files.single.path!);
    }
    // 사용자가 파일 선택을 취소한 경우
    return null;
  }

  /// 🔄 `Future<T> showLoadingFor<T>()`
  ///
  /// 비동기 작업(`future`)이 실행되는 동안 로딩 인디케이터를 표시합니다.
  ///
  /// `future`가 완료되거나 에러가 발생하면 로딩 인디케이터를 자동으로 닫습니다.
  ///
  /// 사용 예:
  /// ```dart
  /// final result = await GlobalFunction.showLoadingFor(context, () async {
  ///   return await networkService.fetchData();
  /// });
  /// ```
  static Future<T> showLoadingFor<T>(
    BuildContext context,
    Future<T> Function() future,
  ) async {
    bool isDialogShown = true;
    // 로딩 인디케이터 다이얼로그를 표시합니다.
    unawaited(
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Center(child: CustomCircularProgressIndicator());
        },
      ).then((_) => isDialogShown = false),
    );

    // try-finally 구문을 사용하여 비동기 작업의 성공/실패 여부와 관계없이
    // 항상 로딩 인디케이터가 닫히도록 보장합니다.
    try {
      // 전달받은 비동기 함수를 실행하고 결과를 반환합니다.
      return await future();
    } finally {
      // 다이얼로그가 여전히 화면에 표시되어 있고 위젯이 마운트된 상태일 때만 pop을 호출합니다.
      if (isDialogShown && context.mounted) {
        context.pop();
      }
    }
  }
}
