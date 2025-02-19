import 'package:flutter/material.dart';
import 'package:travel/pages/home_page.dart';
import 'package:travel/saved_data.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SavedData.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomePage(),
    );
  }
}

