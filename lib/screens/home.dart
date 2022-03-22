import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> {
  String message = 'Hello World';
  bool isColorRed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isColorRed ? Colors.red : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 65),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = 'Updated';
                    isColorRed = !isColorRed;
                  });
                },
                child: const Text('Update Text'))
          ],
        ),
      ),
    );
  }
}
