import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white10,
          leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: Icon(Icons.arrow_back))),
      backgroundColor: Colors.white10,
      body: Image.asset(
        'assets/images/Resume.JPG',
      ),
    );
  }
}
