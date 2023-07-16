import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  var _isChecked = false;

  /// 상단: AppBar, Appbar의 오른쪽에 +아이콘 버튼
  /// + 눌렀을대 dialog 호출(Text, TextFormField, TextButton)
  /// body: 스크롤뷰, SingleChildScrollView
  /// SingleChildScrollView :
  /// 함수위젯(CheckBox, 순번, name, 휴지통 아이콘 버튼)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TodoScreen"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Todo List 추가",
                                style: TextStyle(fontSize: 20),
                              ),
                              TextFormField(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("예"),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("아니오"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _tolists(),
          _tolists(),
          _tolists(),
        ],
      ),
    );
  }

Widget _tolists() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: (value) {
              setState(
                    () {
                  _isChecked = value!;
                },
              );
            },
          ),
          Text("0"),
          Text("asdasdasdasd"),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
          ),
          Divider(height: 20,),
        ],
      ),
    );
}
}

