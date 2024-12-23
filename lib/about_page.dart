import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'evolt',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              debugPrint('Leading icon pressed');
            },
            icon: const Icon(Icons.menu)),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Image.asset(
                'assets/images/evolt.png',
                width: 190,
              ),
            ),

          ],
        ),
        
      ),
    );
  }
}
