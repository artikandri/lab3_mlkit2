import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mlkit/image_labeling_screen.dart';
import 'package:mlkit/object_detection_screen.dart';

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
      home: ChangeNotifierProvider(
        create: (_) => ImageLabelingState(),
        child: ImageLabelingPage(),
      ),
    );
  }
}
