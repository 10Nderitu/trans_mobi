import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {

  int _currentIndex = 0;

  String _dropdownValue = '1';

  final _items = ['Nairobi', 'Voi','Mombasa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text ('DESTINATION'),
          centerTitle: true,
        ),

        body: Column(
          children: [
            const Image(
                width: 500,
                height: 500,
                image: AssetImage("assets/logo.png")),

            Row(
              children: <Widget>[
                const Text(style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                    'From'
                ),

                DropdownButton(
                items: _items.map((String item){
                return DropdownMenuItem(
                value: item,
                    child: Text(item)
                    );
                    }).toList(),
                  onChanged: (String? newValue){
                  setState(() {
                    _dropdownValue = newValue!;
                  });
                  },
                ),

                const SizedBox(width: 100),

                const Text(style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                    'To'
                ),

                DropdownButton(
                  items: _items.map((String item){
                    return DropdownMenuItem(
                        value: item,
                        child: Text(item)
                    );
                  }).toList(),
                  onChanged: (String? newValue){
                    setState(() {
                      _dropdownValue = newValue!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          shape: CircleBorder(),
          backgroundColor: Colors.blue,
          child: Text('Next'),
        ),
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
        ),
    );
  }
}




