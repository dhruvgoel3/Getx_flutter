import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_management/after_navigator.dart';

class HomeScreen extends StatefulWidget {
  final String name;
  const HomeScreen({super.key,  this.name = ''});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx" +widget.name),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog Aleart"),
              subtitle: Text("Hello Getx"),
              leading: Icon(
                CupertinoIcons.heart_circle_fill,
                color: Colors.blue,
              ),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    middleText: 'Are you sure , you want to delete this chat',
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("OK")),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cancel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottom Sheet "),
              subtitle: Text("Hello Getx"),
              leading: Icon(
                CupertinoIcons.heart_circle_fill,
                color: Colors.blue,
              ),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Theme"),
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: TextButton(
                onPressed: () {
                  Get.to(AfterNavigator(name: 'Dhriv goel'));
                },
                child: Text(
                    "  Click here to navigate on next page\n   with the help of Get.to")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Dhruv goel', 'Follow us on insta',
            backgroundColor: Colors.orange,
            snackPosition: SnackPosition.TOP,
            icon: Icon(Icons.add_circle));
      }),
    );
  }
}
