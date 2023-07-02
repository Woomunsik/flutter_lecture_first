import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  String textValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldScreen"),
      ),
      body: Column(
        children: [formWidget()],
      ),
    );
  }

  Widget formWidget() {
    return TextFormField(
      
      /// 글자가 바뀔 때 마다 진입
      onChanged: (value) {
        print('value : $value');
        textValue = value;
        setState(() {});
      },
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),

      cursorColor: Colors.red,

      cursorWidth: 8,

      cursorRadius: Radius.circular(4),

      /// 화면애 보여지는 line의 개수
      maxLines: 3,

      maxLength: 20,

      decoration: InputDecoration(
        hintText: "아이디를 입력하세요.",
        hintStyle: TextStyle(
          fontSize: 40,
          color: Colors.grey,
        ),
        enabled: true,

        ///커서가 없을 떄

        enabledBorder: customBorder(
          5,
          Colors.cyanAccent,
        ),
        focusedBorder: customBorder(
          3,
          Colors.green,
        ),

        errorBorder: customBorder(
          2,
          Colors.red,
        ),

        focusedErrorBorder: customBorder(
          5,
          Colors.red,
        ),

        errorText: checkErrorText(),
      ),
    );
  }

  InputBorder customBorder(double width, Color color) {


    return OutlineInputBorder(
        borderSide: BorderSide(
      width: width,
      color: color,
    ));
  }
  
  String? checkErrorText(){
    if(textValue.isEmpty) {
      return null;
    }

    if(textValue.length < 6){
      return "6글자 이상 입력해주세요.";
    }

    return null;
  }

}
