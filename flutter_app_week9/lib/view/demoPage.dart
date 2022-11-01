import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl =
      Get.find(); //getting the cart controller, you can show amount or anything
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0), child: Text(Get.arguments)),
            SwitchListTile(
              value: ctrl.isDark,
              title: Text("Touch to change ThemeMode"),
              onChanged: ctrl.changeTheme,
            ),
            ElevatedButton(
                onPressed: () => Get.snackbar(
                    "Snackbar", "Hello this is the snackbar message",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white,
                    backgroundColor: Colors.black87),
                child: Text("Snack Bar")),
            ElevatedButton(
                onPressed: () => Get.bottomSheet(Container(
                      height: 150,
                      color: Colors.white,
                      child: Text(
                        'Hello From Bottom Sheet',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    )),
                child: Text("Bottom Sheet")),
            ElevatedButton(
                onPressed: () => Get.offNamed('/'),
                child: Text("Back To Home")),
          ],
        ),
      ),
    );
  }
}
