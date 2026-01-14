import 'package:flutter/material.dart';
import 'package:locapet/export/feat.dart';

class EnrollPetScreen extends StatelessWidget {
  static const String routeName = 'enroll_pet';
  static const String routePath = '/enroll_pet';

  const EnrollPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SubAppBar(title: '펫 등록'),
      body: Center(child: Text('펫 등록')),
    );
  }
}
