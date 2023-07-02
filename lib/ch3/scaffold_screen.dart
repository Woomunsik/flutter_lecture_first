import 'package:flutter/material.dart';

class ScaffildScreen extends StatelessWidget {
  const ScaffildScreen({super.key});

  @override
  Widget build(BuildContext context) {

    /// AppBar 위젯
    /// Scaffold 위젯
    return Scaffold(
      appBar: appBarWidget(),
      backgroundColor: Colors.orange,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("액션버튼 클릭");
      }),
      body: SizedBox(),
    );
  }



  AppBar appBarWidget() {
    return AppBar(
      title: Text("ScaffoldScreen"),

      /// 뒤로가기 버튼 자동 생성 유무
      /// 기본값 true

      automaticallyImplyLeading: true,
      titleSpacing: 30,

      // leadingWidth: 100,

      //
      //leading: Icon(Icons.back_hand),

      actions: [
        Icon(Icons.camera_alt,
        size: 30,
        ),
        SizedBox(width: 10,),
        Icon(Icons.search, size: 30,),
        SizedBox(width: 10,),
      ],

      backgroundColor: Colors.red,
    );
  }

}
