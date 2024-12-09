import 'package:flutter/material.dart';

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
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 134, 212, 206)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 59, 205, 250)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          leading: IconButton(
            onPressed: () {debugPrint('Leading icon pressed');}, 
            icon: const Icon(Icons.menu)
          ),
          actions: [
            IconButton(onPressed:  () {debugPrint('Leading icon pressed');}, icon: const Icon(Icons.search)),
            IconButton(onPressed:  () {debugPrint('Leading icon pressed');}, icon: const Icon(Icons.shopping_bag_outlined))
          ],
        ),

        body: Column(
          children: [
            Image.asset('assets/images/bubble.jpg', width: 190,),
            const Text(
              'ขอบคุณที่ใช้บริการ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 50,),

            const Row(
              children: [
                Text(
                  'สรุปรายละเอียดการชาร์จ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                ),
              ],
            ),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range, size: 30,),
                        Text(
                          'วันที่ชาร์จ',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                //const SizedBox(width: 170,),
                Column(
                  children: [
                    Text(
                      '9 ธันวาคม 2567',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.ev_station, size: 30,),
                        Text(
                          'สถานีชาร์จ',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                //const SizedBox(width: 170,),
                Column(
                  children: [
                    Text(
                      'PEA',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ), 
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {debugPrint('Floating clicked');},
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
