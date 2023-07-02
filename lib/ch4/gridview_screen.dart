import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  String Url =
      "https://i.namu.wiki/i/v9KyHv8mGKwHgcYgSqp31yRE0TRb8AE_HD8TkOoDHB9aWiQFdRQOjhHk0DSOscdpbirRAGdt1Z8Du6-LVPaGpcbO3KjN9_brJNGU94mrLd2kQbZR-GPFAaYboULHf7Uj_y68lfDa_5I7mFDz6hUZhw.webp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewScreen"),
      ),
      body: gridviewBuilder(),
    );
  }

  Widget gridviewBase() {
    return GridView(
      gridDelegate: delegate(),
      padding: EdgeInsets.all(10),
      children: [
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
        Image.network(Url, fit: BoxFit.cover),
      ],
    );
  }

  Widget gridviewBuilder() {
    return GridView.builder(
      gridDelegate: delegate(),
      itemCount: 100,
      itemBuilder: (context, index) {
        print("index : $index");
        return Image.network(Url);
      },
    );
  }

  SliverGridDelegate delegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,

      /// 1 : 기준축과 교차축의 비율이 동일
      /// 0.5 : 1보다 낮은 경우는 기준축이 더 큼
      ///  만약 0.5라면 기준축이 교차축의 2배
      /// 2: 1보다 크면 교차축이 더 큼
      ///  만약 2라면 교차축이 기준축의 두배
      childAspectRatio: 1,

      /// 메인축의 사이즈 고정 설정
      mainAxisExtent: 200,
    );
  }
}
