import 'package:flutter/material.dart';

class TotalStudyTimeDisplay extends StatelessWidget {
  final Duration totalTime;

  const TotalStudyTimeDisplay({super.key, required this.totalTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      alignment: Alignment.center,
      color: Colors.blue,
      child: Column(
        children: [
          Text(
            'Total Study Time',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${totalTime.inHours}h ${totalTime.inMinutes % 60}m',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}