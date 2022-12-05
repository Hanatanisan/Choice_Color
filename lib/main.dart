import 'package:flutter/material.dart';
import 'package:untitled7/red_page.dart';
import 'package:untitled7/yellow_page.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('色を選ぶ'),
      ),
      body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children:[

           ElevatedButton(
          child: Text(
              '青',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            fixedSize: Size(100, 100),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BluePage()),
            );
          },
        ),

        ElevatedButton(
          child: Text(
              '赤',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            fixedSize: Size(100, 100),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RedPage()),
            );
          },
        ),

           ElevatedButton(
             child: Text(
                 '黄',
             style: TextStyle(
               fontSize: 30,
               color: Colors.black,
               fontWeight: FontWeight.bold,
             )
             ),
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.yellow,
               fixedSize: Size(100, 100),
             ),
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => YellowPage()),
               );
             },
           ),
    ],

      ),
    ),
    );
  }
}