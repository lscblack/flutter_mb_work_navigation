import 'package:flutter/material.dart';
import 'package:flutter_mb_work_navigation/Pages/HomePage.dart';
import 'package:flutter_mb_work_navigation/Pages/ViewDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> Electronics = [
      {
        'title': 'Pixel 1',
        'description': 'Pixel is the most featureful mobile phone ever available',
        'price': 800,
        'rating': false,
        'color': Color.fromARGB(255, 67, 52, 167)
      },
      {
        'title': 'Laptop ',
        'description': 'Laptop is the most productive development tool',
        'price': 2000,
        'rating': false,
        'color': Color.fromARGB(255, 16, 155, 76)
      },
      {
        'title': 'Tablet',
        'description': 'Tablet is the most useful device ever for meeting ',
        'price': 1500,
        'rating': true,
        'color': Color.fromARGB(255, 175, 166, 66)
      }
      ,
      {
        'title': 'Pen drive',
        'description': 'iphone is the stylistic phone ever',
        'price': 100,
        'rating': false,
        'color': Color.fromARGB(255, 177, 49, 49)
      }
      ,
      {
        'title': 'Floppy Drive',
        'description': 'Floppy Drive is the most useful device ever for storage ',
        'price': 1800,
        'rating': false,
        'color': Color.fromARGB(255, 46, 137, 147)
      }
    ];

    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Homepage(Electronics: Electronics), // Remove const
        '/viewDetails': (context) =>  Viewdetails(),
      },
    );
  }
}
