import 'package:flutter/material.dart';
import 'package:food_app/models/database/database.dart';
import 'package:food_app/views/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await MyDatabase().database;
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
