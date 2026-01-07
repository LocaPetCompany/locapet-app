part of 'network_check_cubit.dart';

@freezed
abstract class NetworkCheckState with _$NetworkCheckState {
  const factory NetworkCheckState({
    @Default(ConnectivityResult.none) ConnectivityResult connectivityResult,
    @Default(false) bool isErrorPushed,
  }) = _NetworkCheckState;
}
