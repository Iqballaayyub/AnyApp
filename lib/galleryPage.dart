import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gallery', style: TextStyle(color: Colors.white),), backgroundColor: Color.fromARGB(255, 0, 170, 77),),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            child: Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/image/img2.jpg',)
            ),
              onTap: () async {
                await showDialog(context: context, builder: (_) => ImageDialog1(),);
               },
            ),
          
          GestureDetector(
            child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/image/img3.jpg',)
          ),
              onTap: () async {
                await showDialog(context: context, builder: (_) => ImageDialog2(),);
               },
            ),
          
          GestureDetector(
            child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/image/img4.jpg',)
          ),
              onTap: () async {
                await showDialog(context: context, builder: (_) => ImageDialog3(),);
               },
            ),
        ],
      ),
    );
  }
}

class ImageDialog1 extends StatelessWidget {
  const ImageDialog1({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/image/img2.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
class ImageDialog2 extends StatelessWidget {
  const ImageDialog2({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/image/img3.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
class ImageDialog3 extends StatelessWidget {
  const ImageDialog3({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/image/img4.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}