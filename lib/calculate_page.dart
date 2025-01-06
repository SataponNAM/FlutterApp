import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  final currentsoc = TextEditingController();
  final targetsoc = TextEditingController();
  final chargerate = TextEditingController();
  final voltage = TextEditingController();
  final batcapa = TextEditingController();
  final efficiency = TextEditingController();

  String charging = "-----";
  String time = "-----";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EV',
          style: TextStyle(color: Colors.white),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       debugPrint('Leading icon pressed');
        //     },
        //     icon: const Icon(Icons.menu)),
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
            
            const SizedBox(height: 100,),
            Card(
              color: Color.fromARGB(255, 69, 82, 126),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  '$time (hrs)',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            Text(
              "Charging : $charging (kWh)",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 70,),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: currentsoc,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Current SOC %',
                          hintText: 'Enter Current Soc %',
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: targetsoc,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Target SOC %',
                          hintText: 'Enter Target Soc %',
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: chargerate,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Charging Rate (A)',
                          hintText: 'Enter Charging Rate',
                        ),
                      ),
                    ),

                    const SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: voltage,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Voltage (V)',
                          hintText: 'Enter Voltage (V)',
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: batcapa,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Bat Capacity (kWh)',
                          hintText: 'Enter Bat Capacity (kWh)',
                        ),
                      ),
                    ),

                    const SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: efficiency,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Efficiency (%)',
                          hintText: 'Enter Efficiency (%)',
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {
                    double? csoc = double.tryParse(currentsoc.text);
                    double? tsoc = double.tryParse(targetsoc.text);
                    double? cr = double.tryParse(chargerate.text);
                    double? volt = double.tryParse(voltage.text);
                    double? batc = double.tryParse(batcapa.text);
                    double? eff = double.tryParse(efficiency.text);
                    
                    double? cp = (volt!*cr!)/1000;
                    double? times = (tsoc!-csoc!)*batc!/100/(cp!*eff!);

                    setState(() {
                      charging = '${cp.toStringAsFixed(3)}';
                      time = '${times.toStringAsFixed(3)}';
                    });
                    debugPrint('click');
                    print(times);
                  }, 
                  child: const Text(
                    'Calculate', 
                    style: TextStyle(color: Color.fromARGB(255, 43, 77, 129), fontSize: 18),
                  )
                ),
              ]),
            ),
          ],
        ),

      ),
    );
  }
}