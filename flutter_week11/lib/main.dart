import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'LoginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB5_4Aaf0mrjw27uvyqAAq6_p6QxTaFb2o",
          appId: "1:481277318347:android:f9245e3c4356a30ef8f74e",
          messagingSenderId: "481277318347",
          projectId: "fir-auth-b1e7e"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      home: LoginScreen(),
    );
  }
}
