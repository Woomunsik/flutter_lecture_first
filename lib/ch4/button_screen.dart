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
          ],
        ),
      ),
    );
  }

  Widget _elevatedButton() {
    return ElevatedButton(
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

  ButtonStyle buttonStyle() {

    // MediaQuery : 현재 화면의 정보를 가지고 온다.
    // context : 현재 위젯의 주소
    Size size = MediaQuery.of(context).size;

    return ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      foregroundColor: Colors.black,
      shadowColor: Colors.purple,
      elevation: 5,
      fixedSize: Size(300, 60),
    );
  }
}
