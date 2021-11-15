import 'package:flutter/material.dart';

List _images = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
  'assets/images/6.jpg',
  'assets/images/7.jpg',
  'assets/images/8.jpg',
  'assets/images/2.png',
  'assets/images/11.jpg',
  'assets/images/12.jpg',
  'assets/images/13.jpg',
  'assets/images/14.jpg',
  'assets/images/15.jpg',
  'assets/images/16.jpg',
  'assets/images/17.jpg',
  'assets/images/18.jpg',
  'assets/images/19.jpg',
  'assets/images/20.jpg',
  'assets/images/21.jpg',
  'assets/images/22.jpg',
  'assets/images/23.jpg',
  'assets/images/24.jpg',
  'assets/images/25.jpg',
  'assets/images/26.jpg',
  'assets/images/27.jpg',
  'assets/images/28.jpg',
  'assets/images/29.jpg',
  'assets/images/30.jpg',
  'assets/images/31.jpg',
  'assets/images/32.jpg',
  'assets/images/33.jpg',
  'assets/images/34.jpg',
  'assets/images/35.jpg',
  'assets/images/36.jpg'
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGalleryUI(),
    );
  }
}

class MyGalleryUI extends StatelessWidget {
  const MyGalleryUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: avoid_unnecessary_containers
          title: Container(
              child: Row(children: const [
            Icon(Icons.settings),
            SizedBox(width: 110),
            Text('Photos'),
            SizedBox(width: 100),
            Icon(Icons.search)
          ])),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.cyan.shade300, Colors.indigo.shade900],
              ),
            ),
          ),
        ),
        body: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Expanded(
                  child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                        onPressed: () {},
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(_images[index]),
                              fit: BoxFit.cover),
                        )));
                  },
                  itemCount: _images.length,
                ),
              )),
            ])));
  }
}
