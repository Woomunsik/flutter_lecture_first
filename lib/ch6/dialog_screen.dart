import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogScreen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                // barrierColor: Colors.transparent,
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.grey.shade300,
                    shadowColor: Colors.red,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 200,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "다이얼로그",
                            style: TextStyle(fontSize: 20),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("확인"))
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("show dialog"),
          ),
        ],
      ),
    );
  }
}
