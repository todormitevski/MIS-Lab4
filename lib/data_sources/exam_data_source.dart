import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../models/exam.dart';


class ExamDataSource extends CalendarDataSource {
  ExamDataSource(List<Exam> exams) {
    appointments = exams
        .map((exam) => Appointment(
      startTime: exam.startTime,
      endTime: exam.endTime,
      subject: exam.subject,
      location: exam.location,
      color: exam.color,
      id: exam.subject,
    )).toList();
  }
}

List<Exam> getExams() {
  return [
    Exam(
      startTime: DateTime(2025, 1, 20, 10, 0),
      endTime: DateTime(2025, 1, 20, 12, 0),
      subject: 'SPAO',
      location: 'Ruger Boskovic 16',
      coords: LatLng(42.00485471128647, 21.40979237419658),
      color: Colors.blue,
    ),
    Exam(
      startTime: DateTime(2025, 1, 22, 14, 0),
      endTime: DateTime(2025, 1, 22, 16, 0),
      subject: 'Laning Exam',
      location: 'Ruger Boskovic 16',
      coords: LatLng(42.00499679200233, 21.40830693667849),
      color: Colors.green,
    ),
    Exam(
      startTime: DateTime(2025, 1, 25, 9, 0),
      endTime: DateTime(2025, 1, 25, 11, 0),
      subject: 'VNP',
      location: 'Ruger Boskovic 16',
      coords: LatLng(42.00485471128647, 21.40979237419658),
      color: Colors.red,
    ),
  ];
}