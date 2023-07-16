import 'package:flutter/material.dart';

class RouteNamedSecondScreen extends StatefulWidget {
  const RouteNamedSecondScreen({super.key});

  @override
  State<RouteNamedSecondScreen> createState() => _RouteNamedSecondScreenState();
}

class _RouteNamedSecondScreenState extends State<RouteNamedSecondScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    count = args as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteNamedSecondScreen"),
      ),
      body: _body(args),
    );
  }

  Widget _body(dynamic args) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          count.toString(),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(
              context,
              count + 1,
            );
          },
          child: Text("Pop"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/third");
          },
          child: Text("pushNamedReplacement"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/third", (route) => route.isFirst);
          },
          child: Text("pushNamedAndRemoveUntil"),
        ),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, "/third");
        }, child: Text("go Third"))
      ],
    );
  }
}
