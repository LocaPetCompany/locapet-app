import 'dart:async';

import 'package:flutter/material.dart';
import 'package:locapet/export/core.dart';

/// 커스텀 로딩 인디케이터 위젯
///
/// "L O A D I N G" 텍스트와 그 위를 튀어 다니는 점(dot) 애니메이션을 보여줍니다.
/// 텍스트 색상은 순차적으로 변경됩니다.
class CustomLoadingIndicator extends StatefulWidget {
  const CustomLoadingIndicator({super.key});

  @override
  State<CustomLoadingIndicator> createState() => _CustomLoadingIndicatorState();
}

class _CustomLoadingIndicatorState extends State<CustomLoadingIndicator>
    with TickerProviderStateMixin {
  /// 표시할 텍스트 문자열
  static const String _text = 'LOADING';

  /// 각 글자의 고정 너비
  static const double _letterWidth = 30.0;

  late AnimationController _bounceController;
  late Animation<double> _bounceAnimation;

  /// 현재 강조되고 있는 글자의 인덱스
  int _currentIndex = 0;
  Timer? _colorTimer;

  @override
  void initState() {
    super.initState();

    _bounceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // 위로 튀어오르는 애니메이션 (y축 이동)
    _bounceAnimation = Tween<double>(begin: 0, end: -15).animate(
      CurvedAnimation(parent: _bounceController, curve: Curves.easeInOut),
    );

    // 색상 변경 및 인덱스 업데이트 타이머 시작
    _startColorTimer();
    // 점 튀는 애니메이션 시작
    _startBounceAnimation();
  }

  void _startColorTimer() {
    // 1초마다 인덱스 변경 (글자 색상 변경 및 점 이동)
    _colorTimer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _text.length;
        });
      }
    });
  }

  void _startBounceAnimation() {
    // 점은 계속해서 위아래로 튐
    _bounceController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _bounceController.dispose();
    _colorTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60, // 애니메이션 공간 확보
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // 텍스트 렌더링
            Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(_text.length, (index) {
                return SizedBox(
                  width: _letterWidth,
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 300),
                    style: AppTextStyle.appTextStyle.copyWith(
                      color: index == _currentIndex
                          ? AppColor.primaryColor
                          : AppColor.grayColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    child: Text(_text[index]),
                  ),
                );
              }),
            ),
            // 점(Dot) 렌더링
            AnimatedBuilder(
              animation: _bounceController,
              builder: (context, child) {
                // 전체 너비의 절반에서 시작하여(중앙 정렬 보정) 현재 인덱스만큼 이동
                const double startX =
                    -(_text.length * _letterWidth) / 2 + (_letterWidth / 2);

                // 현재 인덱스 위치 (목표 위치)
                final double targetX = startX + (_currentIndex * _letterWidth);

                // 부드러운 수평 이동을 위해 TweenAnimationBuilder 사용
                return TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: startX, end: targetX),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  builder: (context, xOffset, child) {
                    return Transform.translate(
                      // x: 수평 이동, y: 튀는 애니메이션 (-20은 글자 위로 띄우기 위함)
                      offset: Offset(xOffset, _bounceAnimation.value - 20),
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: AppColor.primaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
