import 'package:flutter/material.dart';
import 'package:locapet/export/feat.dart';

class CreateProfileScreen extends StatelessWidget {
  static const String routeName = 'create_profile';
  static const String routePath = '/auth/create_profile';

  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonSafeArea(
      child: Scaffold(appBar: SubAppBar(title: '프로필 설정')),
    );
  }
}
