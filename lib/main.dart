import 'package:flutter/material.dart';
import 'package:online_shopping_app/controllers/mainscreen_provider.dart';
import 'package:online_shopping_app/views/mainscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainScreenProvider())
      ],
      child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
