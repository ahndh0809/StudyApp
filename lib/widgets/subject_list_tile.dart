import 'package:flutter/material.dart';
import '../models/subject.dart';

class SubjectListTile extends StatelessWidget {
  final Subject subject;
  final Function(Duration) onEdit;

  const SubjectListTile({super.key, required this.subject, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subject.name),
      subtitle: Text(
          '${subject.studyTime.inHours} hours ${subject.studyTime.inMinutes % 60} minutes'),
      trailing: IconButton(
        icon: Icon(Icons.edit),
        onPressed: () {
          _showEditDialog(context);
        },
      ),
    );
  }

  void _showEditDialog(BuildContext context) {
    final hoursController =
    TextEditingController(text: subject.studyTime.inHours.toString());
    final minutesController = TextEditingController(
        text: (subject.studyTime.inMinutes % 60).toString());
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('Edit Study Time for ${subject.name}'),
          content: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: hoursController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Hours'),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: minutesController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Minutes'),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final hours = int.tryParse(hoursController.text) ?? 0;
                final minutes = int.tryParse(minutesController.text) ?? 0;
                onEdit(Duration(hours: hours, minutes: minutes));
                Navigator.of(ctx).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
