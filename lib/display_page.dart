import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String? name;
  final int? age;

  const DisplayPage({super.key, required this.name, this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Display Page',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name: ${widget.name}", style: TextStyle(fontSize: 18),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Age: ${widget.age}", style: TextStyle(fontSize: 18),),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/calculate');
                }, 
                child: const Text(
                  "EV Calculate",
                  style: TextStyle(color: Color.fromARGB(255, 43, 77, 129), fontSize: 18),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}