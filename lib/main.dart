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
          const AppBarTheme(color: Color.fromARGB(255, 56, 64, 90)),
          colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 152, 173, 231)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('evolt', style: TextStyle(color: Colors.white),),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Image.asset(
                    'assets/images/evolt.png',
                    width: 190,
                  ),
                ),
                const SizedBox(height: 150,),
                
                // const Text(
                //   'ขอบคุณที่ใช้บริการ',
                //   style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
                // ),
                // const Text(
                //   'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',style: TextStyle(fontSize: 18),),
                // const SizedBox(height: 60,),
                
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
                
                // const Row(
                //   children: [
                //     Icon(
                //       Icons.ev_station,
                //       size: 30,
                //     ),
                //     SizedBox(width: 10,),
                //     Expanded(
                //       child: Text(
                //         'สถานีชาร์จ',
                //         style: TextStyle(fontSize: 18),
                //       ),
                //     ),
                //     SizedBox(width: 50,),
                //     Text(
                //       'evolt',
                //       style: TextStyle(fontSize: 18),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 16),
                
                // const Row(
                //   children: [
                //     Icon(
                //       Icons.power,
                //       size: 30,
                //     ),
                //     SizedBox(width: 10,),
                //     Expanded(
                //       child: Text(
                //         'ประเภทหัวชาร์จ',
                //         style: TextStyle(fontSize: 18),
                //       ),
                //     ),
                //     SizedBox(width: 50,),
                //     Text(
                //       'evolt',
                //       style: TextStyle(fontSize: 18),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 16),

                // const Row(
                //   children: [
                //     Icon(
                //       Icons.access_time_filled,
                //       size: 30,
                //     ),
                //     SizedBox(width: 10,),
                //     Expanded(
                //       child: Text(
                //         'ระยะเวลาการชาร์จ',
                //         style: TextStyle(fontSize: 18),
                //       ),
                //     ),
                //     SizedBox(width: 50,),
                //     Text(
                //       'evolt',
                //       style: TextStyle(fontSize: 18),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 16),

                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       children: [
                //         Row(
                //           children: [
                //             Icon(
                //               Icons.bolt,
                //               size: 30,
                //             ),
                //             Text(
                //               'สถานีชาร์จ',
                //               style: TextStyle(fontSize: 18),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //     //const SizedBox(width: 170,),
                //     Column(
                //       children: [
                //         Text(
                //           'evolt',
                //           style: TextStyle(fontSize: 18),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),               

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

                const Card(
                  color: Color.fromARGB(255, 69, 82, 126),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      '------ (hrs)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                const Text('Charging Power: ---- (kWh)', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 60,),

                const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          labelText: 'Current SOC %',
                          hintText: 'Enter Current Soc %',
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          labelText: 'Target SOC %',
                          hintText: 'Enter Target Soc %',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),

                const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          labelText: 'Charging Rate (A)',
                          hintText: 'Enter Charging Rate',
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          labelText: 'Voltage (V)',
                          hintText: 'Enter Voltage (V)',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                
                const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          labelText: 'Bat Capacity (kWh)',
                          hintText: 'Enter Bat Capacity (kWh)',
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          labelText: 'Efficiency (%)',
                          hintText: 'Enter Efficiency (%)',
                        ),
                      ),
                    ),
                  ],
                ),

                //const Spacer(),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       children: [
                //         Text(
                //           'ค่าบริการรวมทั้งสิ้น',
                //           style: TextStyle(
                //             fontSize: 22,
                //             fontWeight: FontWeight.bold,
                //             color: Color.fromARGB(255, 230, 111, 0),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Text(
                //           '500 บาท',
                //           style: TextStyle(
                //             fontSize: 22,
                //             fontWeight: FontWeight.bold,
                //             color: Color.fromARGB(255, 230, 111, 0),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
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
