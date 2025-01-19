import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import './screens/calendar_screen.dart';
import './screens/map_screen.dart';
import 'widgets/layouts/root_layout.dart';

const DEFAULT_COORDS = LatLng(42.00486021499368, 21.409793414309238);

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIS Lab 4',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/calendar',
      routes: {
        '/calendar': (context) => RootLayout(child: CalendarScreen()),
        '/map': (context) => RootLayout(child: MapScreen(
          examCoords: DEFAULT_COORDS,
        )),
      },
    );
  }
}
