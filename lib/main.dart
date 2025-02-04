import 'package:flutter/material.dart';
import 'package:flutter_app/detail_page.dart';
import 'package:flutter_app/my_homepage_sharedpref.dart';
import 'package:flutter_app/my_listpage.dart';
import 'about_page.dart';
import 'welcome_page.dart';
import 'calculate_page.dart';
import 'list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 58, 72, 117)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 152, 173, 231)),
          useMaterial3: true,
        ),

        // initialRoute: '/',
        // routes: {
        //   '/': (context) => ListPage(),
        //   '/about': (context) => AboutPage(),
        //   '/calculate' : (context) => CalculatePage(),
        // },
        //home: MyListPage(),
        home: MyHomePage(title: 'Homepage'),
    );
  }
}