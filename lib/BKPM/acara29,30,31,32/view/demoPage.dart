import 'package:flutter/material.dart';
import 'package:flutter_project4/BKPM/acara29,30,31,32/controller/demoController.dart';
import 'package:get/get.dart';

//ACAR 31
class DemoPage extends StatelessWidget{
  final Democontroller ctrl = Get
  .find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Get.arguments
              != null ? Get.arguments : ''),
            ),
              SwitchListTile(
                value: ctrl.isDark,
                title: Text("Touch to cahnge ThemeMode"),
               onChanged: ctrl.changeTheme,
              ),
              ElevatedButton(
                onPressed: () => Get.snackbar(
                  "Snaclbar", "Hello this is the Snackbar message",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  backgroundColor: Colors.black87),
                child: Text('Snack Bar')),
                ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                    title: "Dialogue",
                    content: Text(
                      "Hey, From Dialogue",
                    )), 
                  child: Text('Dialogue')),
                  ElevatedButton(
                    onPressed: () => Get.bottomSheet(Container(
                      height: 150,
                      color: Colors.white,
                      child: Text(
                        'Hello From Bottom Sheet',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    )), 
                    child: Text('Bottom Sheet')),
                    ElevatedButton(
                      onPressed: () => 
                      Get.offNamed('/'), 
                      child: Text('Back To Home')),
          ],
        ),
      ),
    );
  }
}