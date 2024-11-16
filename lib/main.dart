import 'package:flutter/material.dart';
import 'package:student_management_web/functions/functions.dart';
import 'package:student_management_web/screens/add_student.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await initializeHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext){
    return MaterialApp(
      home:AddStudent() ,
      theme:ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
