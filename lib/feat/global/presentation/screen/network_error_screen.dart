import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatelessWidget {
  static const String routeName = 'network_error';
  static const String routePath = '/network_error';

  const NetworkErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('네트워크 에러')));
  }
}
