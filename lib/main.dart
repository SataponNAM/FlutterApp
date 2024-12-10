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
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 248, 201, 139)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 241, 158, 79)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('evolt'),
            leading: IconButton(
                onPressed: () {
                  debugPrint('Leading icon pressed');
                },
                icon: const Icon(Icons.menu)),
            // actions: [
            //   IconButton(
            //       onPressed: () {
            //         debugPrint('Leading icon pressed');
            //       },
            //       icon: const Icon(Icons.search)),
            //   IconButton(
            //       onPressed: () {
            //         debugPrint('Leading icon pressed');
            //       },
            //       icon: const Icon(Icons.shopping_bag_outlined))
            // ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Image.asset(
                  'assets/images/evolt.png',
                  width: 190,
                ),
                const SizedBox(height: 30,),
                const Text(
                  'ขอบคุณที่ใช้บริการ',
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
                ),
                const Text(
                  'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',style: TextStyle(fontSize: 18),),
                const SizedBox(height: 60,),
                
                const Row(
                  children: [
                    Text(
                      'สรุปรายละเอียดการชาร์จ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
               
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.date_range,
                              size: 30,
                            ),
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
                const SizedBox(height: 16),
                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.ev_station,
                              size: 30,
                            ),
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
                          'evolt',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.power,
                              size: 30,
                            ),
                            Text(
                              'ประเภทหัวชาร์จ',
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
                          'evolt',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 30,
                            ),
                            Text(
                              'ระยะเวลาการชาร์จ',
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
                          'evolt',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.bolt,
                              size: 30,
                            ),
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
                          'evolt',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'ค่าบริการรวมทั้งสิ้น',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 230, 111, 0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '500 บาท',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 230, 111, 0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {debugPrint('Floating clicked');},
            //   child: const Icon(Icons.shopping_cart),
            // ),
          ),
        )
      );
  }
}
