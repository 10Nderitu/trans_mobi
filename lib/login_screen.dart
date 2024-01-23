import 'package:flutter/material.dart';
import 'package:transmobi/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            // Add logo
            const Padding(
              padding: EdgeInsets.all(8),
              child: Image(image: AssetImage("assets/logo.png")),
            ),
            // Adds email textField
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                  filled: true,
                ),
              ),
            ),
            // Adds spacing of 10
            const SizedBox(
              height: 10,
            ),
            Padding(
              // padding adds spacing all around the child
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              child: const Text.rich(
                TextSpan(
                  text: "Don't have an account?",
                  children: [
                    TextSpan(text: "Sign Up", style: TextStyle(
                      color: Colors.blue,
                    )),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
