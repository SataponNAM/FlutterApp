import 'package:flutter/material.dart';
import 'package:flutter_app/http_basic_page.dart';
import 'package:flutter_app/welcome_page.dart';
import 'my_futurebuilder_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> products = <String>[
    "Coffee",
    "Blue Hawaii Soda",
    "Matcha with Creamcheese",
    "Banana Strawberry Smoothie",
    "Thai Tea",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My List',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: 
      ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            products[index],
            style: const TextStyle(fontSize: 18),
          ),
          onTap: () => Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => HttpBasicPage())
          ),
        ), 
        separatorBuilder: (context, int index) => const Divider(), 
      )

      // ListView(
      //   children: [
      //     ListTile(
      //       leading: const Icon(Icons.cake_outlined),
      //       title: const Text('Macaron', style: TextStyle(fontSize: 18),),
      //       subtitle: const Text('Matcha'),
      //       trailing: const Icon(Icons.navigate_next),
      //       tileColor: const Color.fromARGB(97, 180, 218, 179),
      //       onTap: () => Navigator.push(
      //         context, 
      //         MaterialPageRoute(builder: (context) => WelcomePage())
      //       ),
      //     ),
      //     const ListTile(
      //       leading: Icon(Icons.coffee),
      //       title: Text('Tiramitsu', style: TextStyle(fontSize: 18),),
      //       subtitle: Text('Coffee'),
      //       trailing: Icon(Icons.navigate_next),
      //       tileColor: Color.fromARGB(95, 233, 224, 186),
      //     ),
      //     const ListTile(
      //       leading: Icon(Icons.cake_outlined),
      //       title: Text('Brownie', style: TextStyle(fontSize: 18),),
      //       subtitle: Text('Chocolate'),
      //       trailing: Icon(Icons.navigate_next),
      //       tileColor: Color.fromARGB(95, 201, 175, 160),
      //     ),
      //   ],
      // ),
    );
  }
}