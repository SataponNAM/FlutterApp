import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpBasicPage extends StatefulWidget {
  const HttpBasicPage({super.key});

  @override
  State<HttpBasicPage> createState() => _HttpBasicPageState();
}

class _HttpBasicPageState extends State<HttpBasicPage> {
  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('https://itpart.net/mobile/api/product1.php'));

    if (response.statusCode == 200) {
      String strBody = response.body.toString();
      //final jsonBody = json.decode(response.body);

      //return jsonBody['title'];
      return strBody;
    } else {
      throw Exception('Problem');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'HTTP Basic', 
            style: TextStyle(color: Colors.white),
          ),
        ),
        
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                return Text('${snapshot.data}', style: TextStyle(fontSize: 18));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}', style: TextStyle(fontSize: 18));
              }
              return const Text('No data available');
            },
          ),
        ));
  }
}