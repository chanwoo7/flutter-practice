import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        /**
         * 상단바 / body / 하단바
         */
        // appBar: AppBar( title: Text('앱제목') ),
        // body: Text('안녕'), // body는 필수
        // bottomNavigationBar: BottomAppBar( child: Text('하단바') ),


        /**
         * 가로 / 세로로 위젯 배치
         */
        // body: Row (  // Column 쓰면 세로 배치
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     // spaceEvenly: 모든 여백 동일
        //     // spaceBetween: 양 끝에 우선 배치
        //     // spaceAround: 모든 여백 동일한데 양 끝 여백은 절반만큼
        //     // start: 시작 부분에 다 모여
        //     // end: 끝 부분에 다 모여
        //     // center: 중간에 다 모여
        //
        //   children: [ Icon(Icons.star), Icon(Icons.star), Icon(Icons.star) ]
        // ),


        /**
         * 세로 / 가로 배치 간격 조절
         */
        body: Container (
          color: Colors.grey,
          height : 400,  // 높이가 있어야 세로 정렬 가능
          child : Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,  // mainAxisAlignment
            // Row -> mainAxisAlignment는 가로, crossAxis는 세로
            // Column -> mainAxisAlignment는 세로, crossAxis는 가로

            children: const [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
        ),


        /**
         * 숙제: 하단바 디자인
         */
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            // height: 60,  // 왜 안 동작하지?
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            )
          )
        ),

      ),
    );
  }
}
