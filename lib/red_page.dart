import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('あなたが選んだ色'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}