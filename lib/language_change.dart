import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';

class LanguageChange extends StatelessWidget {
  const LanguageChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Language Changing Tutorial"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                Get.updateLocale(Locale('en' , 'US'));
              }, child: Text("English")),
              ElevatedButton(onPressed: (){
                Get.updateLocale(Locale('ur' , 'PK'));
              }, child: Text("Urdu"))
            ],
          )
          
        ],
      ),
    );
  }
}
