import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 400,
          child: const Text("컨테이너",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.all(30),

          /// decoration을 사용하면 color 사용 불가
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: Colors.black,
            width: 8),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: GradientRotation(1),
              colors: [
                Colors.deepPurpleAccent,
                Colors.green,
                Colors.cyan,
                Colors.red,
                Colors.orangeAccent,
                Colors.black12,
              ]
            )
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.orangeAccent.shade200,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20,
                spreadRadius: 10,
                offset: Offset(15, 15),

                blurStyle: BlurStyle.solid
              ),
            ]
          ),


        ),
      ),
    );
  }
}
