import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonScreen"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _elevatedButton(),
            _textButton(),
            _outlinedButton(),
          ],
        ),
      ),
    );
  }

  Widget _elevatedButton() {
    return ElevatedButton(
      // onPressed: null,
      onPressed: () {
        print('ElevatedButton onPressed');
      },
      onLongPress: () {
        print('ElevatedButton onLongPress');
      },
      style: buttonStyle(),
      child: Text("ElevatedButton"),
    );
  }

  Widget _textButton() {
    return TextButton(
      onPressed: () {},
      child: Text("Textbutton"),
      style: buttonStyle(),
    );
  }

  Widget _outlinedButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text("OutlinedButton"),
      style: buttonStyle(),
    );
  }

  ButtonStyle buttonStyle() {
    // MediaQuery : 현재 화면의 정보를 가지고 온다.
    // context : 현재 위젯의 주소
    Size size = MediaQuery.of(context).size;

    return ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      foregroundColor: Colors.black,
      shadowColor: Colors.purple,
      elevation: 5,
      fixedSize: Size(
        size.width * 0.55,
        size.height * 0.08,
      ),
      // 최대 사이즈 설정
      // maximumSize: Size(400, 100)

      alignment: Alignment.centerLeft,

      padding: EdgeInsets.all(5),

      disabledBackgroundColor: Colors.brown,

      disabledForegroundColor: Colors.white,

      disabledMouseCursor: SystemMouseCursors.grab,

      enabledMouseCursor: SystemMouseCursors.help,

      shape: _shape(),
    );
  }

  OutlinedBorder _shape() {
    BorderSide borderSide = BorderSide(
      color: Colors.black,
      width: 3,
    );

    BorderRadius borderRadius = BorderRadius.circular(16);

    return RoundedRectangleBorder(
      side: borderSide,
      borderRadius: borderRadius,
    );
  }
}
