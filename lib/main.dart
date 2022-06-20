import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/Provider/lib_provider.dart';
import 'package:library_app/pages/homepage.dart';
import 'package:library_app/pages/main_library_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => LibProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}
