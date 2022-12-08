import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('あなたが選んだ色'),
      ),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
