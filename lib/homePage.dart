import 'package:flutter/material.dart';
import 'package:info_popup/info_popup.dart';
import 'package:third_app/bookList.dart';
import 'package:third_app/galleryPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnyApp', style: TextStyle(color: Colors.white),), backgroundColor: Color.fromARGB(255, 0, 170, 77),),
      body: Center(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 2.0),
            child: Container(
              child: Image.asset('assets/image/img1.png', width: 200, height: 100, ),
              ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryPage()));
          }, child: const Text('Galeri')),

          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0, bottom: 2.0),
            child: Container(
              child: Image.asset('assets/image/icn_book.png', width: 200, height: 100, ),
              ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookList()));
          }, child: const Text('Book'))
        ],
        ),
      )
    );
  }
}