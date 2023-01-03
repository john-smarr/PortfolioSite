import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:js_portfolio_flutter/components/dependent_appbar_component.dart';

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
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white10,
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              height: 1 / 1.1 * MediaQuery.of(context).size.height,
              width: 1 / 1.1 * MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
