import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.black,
    Colors.white,
  ];

  List<String> nameList = [
    "Red",
    "Blue",
    "Green",
    "Yellow",
    "Purple",
    "Orange",
    "Pink",
    "Brown",
    "Black",
    "White",
  ];

  List<String> storyList = [
    "Red is full of energy!",
    "Blue is calm like the sky!",
    "Green is for grass!",
    "Yellow is bright like the sun!",
    "Purple feels magical!",
    "Orange is juicy and fun!",
    "Pink is soft like cotton candy!",
    "Brown is earthy and warm!",
    "Black is cool and strong!",
    "White is pure like snow!",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color Story"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: colorList[currentIndex],
              ),
              SizedBox(height: 30),
              Text(
                nameList[currentIndex],
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 10),
              Text(
                storyList[currentIndex],
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (currentIndex < colorList.length - 1) {
                    currentIndex++;
                  } else {
                    currentIndex = 0;
                  }
                  setState(() {});
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
