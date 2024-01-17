import 'package:flutter/material.dart';
import 'package:transmobi/login_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final emailController = TextEditingController();
  final telController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image(
                  // takes image property
                  width: MediaQuery.of(context).size.width * 0.5,

                  /// fetches device width and halves it
                  image: const AssetImage("assets/logo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: fNameController,
                  decoration: const InputDecoration(
                    hintText: "First name",
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: lNameController,
                  decoration: const InputDecoration(
                    hintText: "Last name",
                    filled: true,
                  ),
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: telController,
                  decoration: const InputDecoration(
                    hintText: "Phone",
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
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
                child: const Text("Sign Up"),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: const Text("Already have an account? Login"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
