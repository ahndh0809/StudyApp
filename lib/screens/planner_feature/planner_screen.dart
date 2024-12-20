import 'package:flutter/material.dart';
import 'package:project/models/subject.dart';
import 'package:project/widgets/total_study_time_display.dart';
import 'package:project/widgets/subject_list_tile.dart';

class StudyTimerScreen extends StatefulWidget {
  const StudyTimerScreen({super.key});

  @override
  _StudyTimerScreenState createState() => _StudyTimerScreenState();
}

class _StudyTimerScreenState extends State<StudyTimerScreen> {
  final List<Subject> _subjects = [
    Subject(name: 'Math', studyTime: Duration(hours: 2, minutes: 30)),
    Subject(name: 'English', studyTime: Duration(hours: 1, minutes: 45)),
    Subject(name: 'Science', studyTime: Duration(hours: 3, minutes: 15)),
  ];

  Duration get _totalStudyTime {
    return _subjects.fold(
        Duration.zero, (sum, subject) => sum + subject.studyTime);
  }

  void _updateStudyTime(Subject subject, Duration newTime) {
    setState(() {
      subject.studyTime = newTime;
    });
  }

  void _addNewSubject(String subjectName) {
    setState(() {
      _subjects.add(Subject(name: subjectName));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Timer'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TotalStudyTimeDisplay(totalTime: _totalStudyTime),
          Expanded(
            child: ListView.builder(
              itemCount: _subjects.length,
              itemBuilder: (ctx, index) {
                return SubjectListTile(
                  subject: _subjects[index],
                  onEdit: (newTime) =>
                      _updateStudyTime(_subjects[index], newTime),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddSubjectDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddSubjectDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('Add New Subject'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: 'Subject Name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _addNewSubject(controller.text);
                Navigator.of(ctx).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}