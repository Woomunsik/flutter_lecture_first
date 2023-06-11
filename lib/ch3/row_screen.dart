import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: _container(100, 100, Colors.red)),
            const Spacer(),
            _container(100, 100, Colors.orangeAccent),
            _container(100, 100, Colors.lightGreenAccent),
          ],

        ),
      )
    );
  }
  Widget _container(
      double width,
      double height,
      Color color,
      ) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
