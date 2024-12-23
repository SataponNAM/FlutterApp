import 'package:flutter/material.dart';
import 'package:flutter_app/about_page.dart';
import 'package:flutter_app/calculate_page.dart';
import 'package:flutter_app/welcome_page.dart';

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
              const AppBarTheme(color: Color.fromARGB(255, 56, 64, 90)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 152, 173, 231)),
          useMaterial3: true,
        ),
        home: const CalculatePage(),
    );
  }
}

// const Row(
//   children: [
//     Text(
//       'สรุปรายละเอียดการชาร์จ',
//       style: TextStyle(
//         fontSize: 22,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ],
// ),
// const SizedBox(height: 16),

// const Row(
//   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Icon(
//       Icons.date_range,
//       size: 30,
//     ),
//     SizedBox(width: 10,),
//     Expanded(
//       child: Text(
//         'วันที่ชาร์จ',
//         style: TextStyle(fontSize: 18),
//       ),
//     ),
//     SizedBox(width: 50,),
//     Text(
//       '9 ธันวาคม 2567',
//       style: TextStyle(fontSize: 18),
//     ),
//   ],
// ),
// const SizedBox(height: 16),

// const Card(
//   color: Color.fromARGB(255, 210, 202, 250),
//   child: Padding(
//     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
//     child: Text(
//       '0W0',
//       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//     ),
//   ),
// ),