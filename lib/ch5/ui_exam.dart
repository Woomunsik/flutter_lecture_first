import 'package:flutter/material.dart';

class UiExam extends StatefulWidget {
  const UiExam({super.key});

  @override
  State<UiExam> createState() => _UiExamState();
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Icon(
          Icons.local_taxi,
          size: 40,
        ),
        Text("택시"),
        Icon(
          Icons.local_taxi,
          size: 40,
        ),
        Text("블랙"),
      ],
    );
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "이용서비스",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "내 정보",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class _UiExamState extends State<UiExam> {
  var _index = 0;
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "복잡한 UI",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ))
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "이용서비스",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "내 정보",
          ),
        ],
      ),
    );
  }
}
