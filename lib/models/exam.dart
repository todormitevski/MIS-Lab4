import 'dart:ui';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Exam {
  final DateTime startTime;
  final DateTime endTime;
  final String subject;
  final String location;
  final LatLng coords;
  final Color color;

  Exam({
    required this.startTime,
    required this.endTime,
    required this.subject,
    required this.location,
    required this.coords,
    required this.color,
  });
}