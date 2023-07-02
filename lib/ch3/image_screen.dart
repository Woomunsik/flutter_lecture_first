import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  final String imageUrl =
      "https://img.freepik.com/free-photo/beautiful-beach-and-sea_74190-3820.jpg?w=1060&t=st=1687074822~exp=1687075422~hmac=80e5571eb273ba29629c979c5e0c12b2139950a02ebbde3bdb3ee0974b2db600";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageScreen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                color: Colors.blue,
                width: 300,
                height: 300,
                child: Image.asset("assets/images.jpg")),
            Container(
              color: Colors.red,
              width: 300,
              height: 300,
              child: Image.network(
                imageUrl, //fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
