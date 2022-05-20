import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu1/home_page.dart';
import 'package:restaurant_menu1/lang_provider.dart';


void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LangProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Pacifico'),
      home: const HomePage(),
    );
  }
}
