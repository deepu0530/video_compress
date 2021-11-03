import 'package:flutter/material.dart';
import 'package:video_compress/screens/upload_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Compress',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: UploadVideo(),
    );
  }
}

