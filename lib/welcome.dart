import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        child: Text('Next'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage("assets/logo.png")),
            Text(style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
                'WELCOME TO PRESTIGE COACH'
            ),
          ],
        ),
      )
    );
  }
}
