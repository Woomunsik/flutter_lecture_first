import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  List<int> dataList = [45, 5, 2, 67, 56456478, 231431, 75, 22, 727, 213];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("ListviewScreen"),
      ),
      body: listViewSeparator(),
    );
  }

  Widget listView() {
    return ListView(
      //physics: RangeMaintainingScrollPhysics(),
      // physics: BouncingScrollPhysics(),
      physics: ClampingScrollPhysics(),
      children: [
        _box(
          Colors.black,
        ),
        _box(
          Colors.red,
        ),
        _box(
          Colors.orange,
        ),
      ],
    );
  }

  Widget listViewBuilder() {
    return ListView.builder(itemBuilder: (context, index) {
      return (Text(
        index.toString(),
        style: TextStyle(
          fontSize: 30,
        ),
      ));
    });
  }

  Widget listViewSeparator() {
    return ListView.separated(
      // cacheExtent: ,
        itemBuilder: (context, index) {
          print('index : $index');
        return Column(
            children: [
              Text(
                dataList[index].toString(),
                style: TextStyle(fontSize: 30),
              ),
            ],
          );
        },

        /// item들의 사이에 들어가는 위젯
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 50,
          );
        },
        itemCount:dataList.length,);
  }

  Widget _box(Color color) {
    return Container(
      height: 300,
      color: color,
    );
  }
}
