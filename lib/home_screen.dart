import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch3/column_screen.dart';
import 'package:flutter_lecture_first/ch3/container_screen.dart';
import 'package:flutter_lecture_first/ch3/image_screen.dart';
import 'package:flutter_lecture_first/ch3/row_screen.dart';
import 'package:flutter_lecture_first/ch3/scaffold_screen.dart';
import 'package:flutter_lecture_first/ch3/text_screen.dart';
import 'package:flutter_lecture_first/ch4/listview_screen.dart';
import 'package:flutter_lecture_first/ch4/single_scroll_screen.dart';
import 'package:flutter_lecture_first/ch5/bottom_navigation_bar_screen.dart';

import 'ch4/button_screen.dart';
import 'ch4/gridview_screen.dart';
import 'ch4/text_form_field_screen.dart';
import 'ch5/default_tab_controller_screen.dart';
import 'ch5/pageview_screen.dart';
import 'ch5/tabbar_screen.dart';
import 'ch5/ui_exam.dart';
import 'ch5/ui_exam_screen.dart';
import 'ch6/dialog_screen.dart';
import 'ch6/route_screen.dart';
import 'ch6/todo/todo_list_screen.dart';
import 'ch6/todo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Home"),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          button(page: ContainerScreen(), name: "container"),
          button(page: ColumnScreen(), name: "column"),
          button(page: RowScreen(), name: "row"),
          button(page: ScaffildScreen(), name: "scaffold"),
          button(page: TextScreen(), name: "Text"),
          button(page: ImageScreen(), name: "Image"),
          button(page: ButtonScreen(), name: "button"),
          button(page: TextFormFieldScreen(), name: "TextFormFieldScreen"),
          button(page: SingleScrollScreen(), name: "SingleScrollScreen"),
          button(page: ListviewScreen(), name: "ListviewScreen"),
          button(page: GridViewScreen(), name: "GridViewScreen"),
          button(page: PageViewScreen(), name: "PageViewScreen"),
          button(page: TabBarScreen(), name: "TabBarScreen"),
          button(page: DefaultTabControllerScreen(), name: "DefaultTabControllerScreen"),
          button(page: UiExam(), name: "UiExam"),
          button(page: UiExamScreen(), name: "UiExamScreen"),
          button(page: BottomNavigationBarScreen(), name: "BottomNavigationBarScreen"),
          button(page: RouteScreen(), name: "RouteScreen"),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/first");
          }, child: Text("RouteNamedScreen"),),
          button(page: DialogScreen(), name: "DialogScreen"),
          button(page: TodoScreen(), name: "TodoScreen"),
          button(page: TodoListScreen(), name: "TodoListScreen"),
        ],
      ),
    ),);
  }

  Widget button({required Widget page, required String name}){
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return page;
        },));
      }, child: Text(
          name,
      style: TextStyle(fontSize: 24),
      ),
      ),
    );
  }
}
