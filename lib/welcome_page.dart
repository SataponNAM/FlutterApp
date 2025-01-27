import 'package:flutter/material.dart';
import 'display_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String? name;
  int? age;
  final namecontroller = TextEditingController();
  final agecontroller = TextEditingController();

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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),

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
            const SizedBox(height: 12,),
            TextField(
              controller: agecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(8))
                ),
                labelText: 'Age',
                hintText: 'Enter Age',
              ),
            ),

            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = namecontroller.text;
                  age = int.parse(agecontroller.text);
                });
                debugPrint('Name : $name');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DisplayPage(name: name,age: age,)));
              }, 
              child: const Text(
                'Display', 
                style: TextStyle(color: Color.fromARGB(255, 43, 77, 129), fontSize: 18),
              )
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              }, 
              child: const Text(
                "About",
                style: TextStyle(color: Color.fromARGB(255, 43, 77, 129), fontSize: 18),
                )
            ),
            
          ],
        ),
        
      ),
    );;
  }
}