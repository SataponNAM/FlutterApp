import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(color: Colors.white),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       debugPrint('Leading icon pressed');
        //     },
        //     icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Leading icon pressed');
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                debugPrint('Leading icon pressed');
              },
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),

      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("About", style: TextStyle(fontSize: 18),),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}
