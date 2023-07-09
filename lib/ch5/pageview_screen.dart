import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController();

  double opacity = 1;

  @override
  void initState() {
    pageController.addListener(() {
      if (pageController.page! < 1) {
        setState(() {
          opacity = pageController.page!;
        });
      }
      print(pageController.page);

      /// addListener : PageView가 동작할때마다 호출
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewScreen'),
      ),
      body: Column(
        children: [
          Opacity(
            opacity: opacity,
            child: Container(
              color: Colors.black,
              height: 50,
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                print('value : $value');
              },
              children: [
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.brown),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
