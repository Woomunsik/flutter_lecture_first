import 'package:flutter/material.dart';

class RouteNamedThirdScreen extends StatelessWidget {
  const RouteNamedThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteNamedThirdScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/first'),);
          }, child: Text("popUntil"),),
        ],
      ),
    );
  }
}
