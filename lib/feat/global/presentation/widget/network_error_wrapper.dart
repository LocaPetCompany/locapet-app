import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class NetworkErrorWrapper extends StatelessWidget {
  final Widget child;
  const NetworkErrorWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkCheckCubit, NetworkCheckState>(
      listenWhen: (previous, current) =>
          previous.isErrorPushed != current.isErrorPushed,
      listener: (context, state) {
        final cubit = context.read<NetworkCheckCubit>();
        if (state.connectivityResult == ConnectivityResult.none &&
            !state.isErrorPushed) {
          context.pushNamed(NetworkErrorScreen.routeName);
          cubit.isPushed();
        } else if (state.connectivityResult != ConnectivityResult.none &&
            state.isErrorPushed) {
          context.pop();
          cubit.isPoped();
        }
      },
      child: child,
    );
  }
}
