import 'package:flutter/material.dart';

class HeadLinePage extends StatelessWidget {
  const HeadLinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(child: Text("ヘッドライン"),),
        ),
      ),
    );
  }
}
