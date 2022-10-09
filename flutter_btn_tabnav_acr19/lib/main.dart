import 'package:flutter/material.dart';
import 'package:flutter_btn_tabnav_acr19/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
