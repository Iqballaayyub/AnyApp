import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book', style: TextStyle(color: Colors.white),), backgroundColor: Color.fromARGB(255, 0, 170, 77),),
      body: Center(child: Text('Coming Soon!', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40.0),)),
    );
  }
}