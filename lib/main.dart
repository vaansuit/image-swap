import 'dart:html';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //root of app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String image = 'assets/invoker.jpg';

void swapImage() {
  if (image == 'assets/invoker.jpg') {
    image = 'assets/terror.jpg';
  } else if (image == 'assets/terror.jpg') {
    image = 'assets/anti-mage.jpg';
  } else if (image == 'assets/anti-mage.jpg') {
    image = 'assets/invoker.jpg';
  }
}

// swapImage() => {if (EventListener) {}};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(children: [
          Image.asset(image),
          const Text('\n'),
          ElevatedButton(
              onPressed: () {
                swapImage();
                setState(() {}); //set state é o refresh da pagina
              },
              child: const Text('Press to change! '))
        ])));
  }
}
