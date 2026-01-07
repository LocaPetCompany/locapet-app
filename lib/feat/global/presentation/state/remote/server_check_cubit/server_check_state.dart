part of 'server_check_cubit.dart';

@freezed
abstract class ServerCheckState with _$ServerCheckState {
  const factory ServerCheckState({
    @Default(AsyncState.initial) AsyncState asyncState,
    CurrentVersionResponseEntity? currentVersion,
  }) = _ServerCheckState;
}
