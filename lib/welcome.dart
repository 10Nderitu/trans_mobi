import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage("assets/logo.png")),
            Text(style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
                'WELCOME TO PRESTIGE COACH'
            ),
          ],
        ),
      )
    );
  }
}
