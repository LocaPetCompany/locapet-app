import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

part 'server_check_cubit.freezed.dart';
part 'server_check_state.dart';

class ServerCheckCubit extends Cubit<ServerCheckState> {
  final PostCurrentServerVersionUsecase _postCurrentServerVersionUsecase;
  final AppLogger _logger;

  ServerCheckCubit(this._postCurrentServerVersionUsecase, this._logger)
    : super(const ServerCheckState());

  Future<void> checkServer({required CurrentVersionRequestDto body}) async {
    emit(state.copyWith(asyncState: AsyncState.loading));
    final result = await _postCurrentServerVersionUsecase.call(body);
    result.fold(
      (failure) {
        emit(state.copyWith(asyncState: AsyncState.error));
        _logger.e(failure.message);
      },
      (currentVersion) {
        emit(
          state.copyWith(
            asyncState: AsyncState.success,
            currentVersion: currentVersion,
          ),
        );
        _logger.i('서버 확인 성공');
      },
    );
  }
}
