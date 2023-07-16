import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch6/todo/todo_model.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<TodoModel> todoList = [];
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    todoList.add(
      TodoModel("산책", false),
    );
    todoList.add(
      TodoModel("등산", true),
    );
    print(todoList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo-List"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return _dialog();
                },
              ).then((value) {
                print(value);
                if(value =="") {
                  return;
                }
                todoList.add(
                  TodoModel(
                    value,
                    false,
                  ),
                );
                setState(() {});
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return _item(todoList[index], index);
      },
      separatorBuilder: (context, index) => Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey,
      ),
      itemCount: todoList.length,
    );
  }

  Widget _item(TodoModel todoModel, int index) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Checkbox(
            value: todoModel.complete,
            onChanged: (value) {
              todoModel.complete = value!;
              setState(() {});
              print(todoModel);
            },
          ),
          Text(
            index.toString(),
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              todoModel.name,
              style: TextStyle(fontSize: 20),
            ),
          ),
          IconButton(
            onPressed: () {
              print(index.toString(),);
              todoList.removeAt(index);
              setState(() {

              });
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  Widget _dialog() {
    return Dialog(
      child: SizedBox(
        width: 100,
        height: 200,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Todo-List 추가",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: textEditingController,
                autofocus: true,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (value) {
                  print('value : $value');
                  Navigator.pop(context, textEditingController.text);
                  textEditingController.text = "";
                },
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(50, 60),
                      foregroundColor: Colors.grey.shade700,
                    ),
                    child: Text(
                      "취소",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, textEditingController.text);
                      textEditingController.text = "";
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(50, 60),
                      foregroundColor: Colors.grey.shade700,
                    ),
                    child: Text(
                      "등록",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
