import 'package:locapet/export/package.dart';

part 'network_check_cubit.freezed.dart';
part 'network_check_state.dart';

class NetworkCheckCubit extends Cubit<NetworkCheckState> {
  late final StreamSubscription _streamSubsctiprion;

  NetworkCheckCubit() : super(const NetworkCheckState()) {
    _streamSubsctiprion = Connectivity().onConnectivityChanged.listen((result) {
      ConnectivityResult connectivityResult;
      if (result.contains(ConnectivityResult.wifi)) {
        connectivityResult = ConnectivityResult.wifi;
      } else if (result.contains(ConnectivityResult.mobile)) {
        connectivityResult = ConnectivityResult.mobile;
      } else {
        connectivityResult = ConnectivityResult.none;
      }
      emit(state.copyWith(connectivityResult: connectivityResult));
    });
  }

  void isPushed() {
    emit(state.copyWith(isErrorPushed: true));
  }

  void isPoped() {
    emit(state.copyWith(isErrorPushed: false));
  }

  @override
  Future<void> close() {
    _streamSubsctiprion.cancel();
    return super.close();
  }
}
