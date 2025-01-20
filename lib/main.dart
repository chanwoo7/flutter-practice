import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // 글자
      // home: Text('안녕'),

      // 아이콘
      // home: Icon(Icon.star),

      // 이미지
      // home: Image.asset('assets/dog.png'),

      // 네모 박스 + width, height 설정
      // home: Center(
      //     child: Container(width : 50, height : 50, color: Colors.blue)
      // ),

      // 위젯 안에 위젯
      home: Container(
        child: Text('박스 안 글자임'),
      )
    );
  }
}
