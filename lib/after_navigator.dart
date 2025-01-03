import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfterNavigator extends StatefulWidget {
  const AfterNavigator({super.key, required String name});

  @override
  State<AfterNavigator> createState() => _AfterNavigatorState();
}

class _AfterNavigatorState extends State<AfterNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("click here to go back")))
        ],
      ),
    );
  }
}
