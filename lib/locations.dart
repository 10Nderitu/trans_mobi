import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text ('DESTINATION'),
          centerTitle: true,
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_filled)
            ),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person)
            )
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }
        )
    );
  }
}




