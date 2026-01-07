import 'package:flutter/material.dart';
import 'package:kpostal/kpostal.dart';

class KpostalWidget extends StatefulWidget {
  const KpostalWidget({super.key});

  @override
  State<KpostalWidget> createState() => _KpostalWidgetState();
}

class _KpostalWidgetState extends State<KpostalWidget> {
  String postCode = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => KpostalView(
              useLocalServer: true,
              localPort: 8080,
              callback: (result) {
                setState(() {
                  postCode = result.postCode;
                  address = result.address;
                });
              },
            ),
          ),
        ),
        child: const Text('주소찾기'),
      ),
    );
  }
}
