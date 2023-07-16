import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UiExamScreen extends StatefulWidget {
  const UiExamScreen({super.key});

  @override
  State<UiExamScreen> createState() => _UiExamScreenState();
}

class _UiExamScreenState extends State<UiExamScreen> {
  int _currentIndex = 0;

  final PageController pageController = PageController(viewportFraction: 0.9);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            _body(),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.grey,
            ),
          ],
        ),
        bottomNavigationBar: _bottomNav(),);
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("복잡한 UI"),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _top(),
          const SizedBox(
            height: 20,
          ),
          _middle(),
          const SizedBox(
            height: 20,
          ),
          ..._bottom(),
        ],
      ),
    );
  }

  List<String> labels = [
    "택시",
    "버스",
    "바이크",
    "승용차",
    "택시2",
    "버스2",
    "콜벤",
    "자전거",
  ];

  Widget _top() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      padding: EdgeInsets.symmetric(horizontal: 20),
      childAspectRatio: 1.2,
      children: [
        ...List.generate(
          labels.length,
              (index) {
            return iconItem(
              text: labels[index],
              onPressed: () {
                print('${labels[index]} 클릭');
              },
            );
          },
        ),
      ],
    );
  }

  Widget iconItem({
    required String text,
    required Function() onPressed,
  }) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.local_taxi,
            size: 40,
          ),
          Text(text),
        ],
      ),
    );
  }

  List<String> imageList = [
    "assets/images.jpg",
    "assets/images.jpg",
    "assets/images.jpg",
  ];

  Widget _middle() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image
                    .asset(
                  imageList[index],
                )
                    .image,
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _bottom() {
    return List.generate(
      10,
          (index) {
        return ListTile(
          onTap: () {},
          leading: const Icon(Icons.notifications_none_rounded),
          title: const Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text("[이벤트] 이것은 공지사항 입니다."),
          ),
          minLeadingWidth: 0,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      iconSize: 30,
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      items: const
      [BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment_outlined),
          activeIcon: Icon(Icons.assignment_turned_in),
          label: "이용서비스",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance),
          activeIcon: Icon(Icons.account_circle),
          label: "내정보",
        ),
      ],);
  }
}
