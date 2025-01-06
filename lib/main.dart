import 'package:flutter/material.dart';
import 'package:flutter_app/about_page.dart';
import 'package:flutter_app/welcome_page.dart';
import 'calculate_page.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           appBarTheme:
//               const AppBarTheme(color: Color.fromARGB(255, 56, 64, 90)),
//           colorScheme: ColorScheme.fromSeed(
//               seedColor: const Color.fromARGB(255, 152, 173, 231)),
//           useMaterial3: true,
//         ),
//         home: const WelcomePage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 56, 64, 90)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 152, 173, 231)),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
          '/about': (context) => AboutPage(),
          '/calculate' : (context) => CalculatePage(),
        },
    );
  }
}