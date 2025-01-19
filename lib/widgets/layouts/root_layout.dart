import 'package:flutter/material.dart';

class RootLayout extends StatelessWidget {
  final Widget child;

  const RootLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("213165")),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _getCurrentIndex(context),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Map",
          ),
        ],
        onTap: (index) {
          _onItemTapped(context, index);
        },
      ),
    );
  }
}

int _getCurrentIndex(BuildContext context) {
  final currentRoute = ModalRoute.of(context)?.settings.name;
  if (currentRoute == '/map') return 1;
  return 0;
}

void _onItemTapped(BuildContext context, int index) {
  if (index == 0) {
    Navigator.pushReplacementNamed(context, '/calendar');
  } else if (index == 1) {
    Navigator.pushReplacementNamed(context, '/map');
  }
}