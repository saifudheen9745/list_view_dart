import 'package:flutter/material.dart';

class details_page extends StatelessWidget {
  final String name;

  const details_page({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Images/AppleImg.jpg',
              width: 200,
              height: 200,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Go back"))
          ],
        )),
      ),
    );
  }
}
