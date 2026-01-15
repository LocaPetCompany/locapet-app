import 'package:flutter/material.dart';
import 'package:locapet/export/feat.dart';

class EnrollPetScreen extends StatelessWidget {
  static const String routeName = 'enroll_pet';
  static const String routePath = '/enroll_pet';

  final String appBarTitle;

  const EnrollPetScreen({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SubAppBar(title: appBarTitle),
      body: const Center(child: Text('펫 등록')),
    );
  }
}
