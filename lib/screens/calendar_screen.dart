import 'package:flutter/material.dart';
import 'package:mis_lab4_re/screens/map_screen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../data_sources/exam_data_source.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: ExamDataSource(getExams()),
        monthViewSettings: const MonthViewSettings(
          showAgenda: true,
        ),
        onTap: (CalendarTapDetails details) {
          if (details.appointments != null && details.appointments!.isNotEmpty) {
            final appointment = details.appointments!.first;
            final exam = getExams().firstWhere((exam) => exam.subject == appointment.id);  // Retrieve Exam using the id
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MapScreen(examCoords: exam.coords),
              ),
            );
          }
        },
      ),
    );
  }
}
