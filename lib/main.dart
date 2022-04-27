import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'image_labeling_screen.dart';
import 'object_detection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Widget _menuItem(String text, Widget page) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        title: Text(text),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Machine  Kit'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _menuItem(
              'Image Labeling',
              ChangeNotifierProvider(
                create: (_) => ImageLabelingState(),
                child: ImageLabelingPage(),
              ),
            ),
            _menuItem(
              'Object Detection & Tracking',
              ChangeNotifierProvider(
                create: (_) => ObjectDetectionState(),
                child: ObjectDetectionPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
