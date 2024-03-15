import 'package:flutter/material.dart';
import 'database_helper.dart';

class VoilaCallScreen extends StatefulWidget {
  @override
  _VoilaCallScreenState createState() => _VoilaCallScreenState();
}

class _VoilaCallScreenState extends State<VoilaCallScreen> {
  String selectedLead = 'not responding';
  TextEditingController nameController = TextEditingController();

  void submitData() async {
    String name = nameController.text;
    print('Data inserted into SQLite database: Name: $name, Lead: $selectedLead');
    nameController.clear();
    setState(() {
      selectedLead = 'not responding';
    });
    _logDatabasePath(); // Call the method to print the database path
  }

  // Method to log the database path
  void _logDatabasePath() async {
    final path = await DatabaseHelper.getDatabasePath();
    print('Database Path: $path');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voila Call'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: nameController,
            ),
            SizedBox(height: 20),
            Text(
              'Select Lead:',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Radio(
                  value: 'not responding',
                  groupValue: selectedLead,
                  onChanged: (value) {
                    setState(() {
                      selectedLead = value.toString();
                    });
                  },
                ),
                Text('Not Responding'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'open lead',
                  groupValue: selectedLead,
                  onChanged: (value) {
                    setState(() {
                      selectedLead = value.toString();
                    });
                  },
                ),
                Text('Open Lead'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'warm lead',
                  groupValue: selectedLead,
                  onChanged: (value) {
                    setState(() {
                      selectedLead = value.toString();
                    });
                  },
                ),
                Text('Warm Lead'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'cold lead',
                  groupValue: selectedLead,
                  onChanged: (value) {
                    setState(() {
                      selectedLead = value.toString();
                    });
                  },
                ),
                Text('Cold Lead'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'hot lead',
                  groupValue: selectedLead,
                  onChanged: (value) {
                    setState(() {
                      selectedLead = value.toString();
                    });
                  },
                ),
                Text('Hot Lead'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'customer',
                  groupValue: selectedLead,
                  onChanged: (value) {
                    setState(() {
                      selectedLead = value.toString();
                    });
                  },
                ),
                Text('Customer'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitData,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
