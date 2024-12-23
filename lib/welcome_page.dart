import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String output = "";
  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome Page',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              debugPrint('Leading icon pressed');
            },
            icon: const Icon(Icons.menu)
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),

            Text("$output"),

            const SizedBox(height: 20,),
            TextField(
              controller: namecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(8))
                ),
                labelText: 'Name',
                hintText: 'Enter Name',
              ),
            ),

            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                debugPrint('Name : $namecontroller');
                setState(() {
                  output = namecontroller.text;
                });
              }, 
              child: const Text(
                'Click', 
                style: TextStyle(color: Color.fromARGB(255, 43, 77, 129), fontSize: 18),
              )
            ),
            
          ],
        ),
        
      ),
    );;
  }
}