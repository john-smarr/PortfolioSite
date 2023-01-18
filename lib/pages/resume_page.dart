import 'package:flutter/material.dart';

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
              icon: const Icon(Icons.arrow_back))),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          child: Image.asset(
            'assets/images/Resume.JPG',
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
