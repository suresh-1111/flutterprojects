import 'package:flutter/material.dart';

class StatusRadio extends StatefulWidget {
  final Function(String) onStatusSelected;

  const StatusRadio({Key? key, required this.onStatusSelected}) : super(key: key);

  @override
  _StatusRadioState createState() => _StatusRadioState();
}

class _StatusRadioState extends State<StatusRadio> {
  String _selectedStatus = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Radio(
              value: 'Not Responding',
              groupValue: _selectedStatus,
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                  widget.onStatusSelected(_selectedStatus);
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Not Responding'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 'Open Lead',
              groupValue: _selectedStatus,
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                  widget.onStatusSelected(_selectedStatus);
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Open Lead'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 'Warm Lead',
              groupValue: _selectedStatus,
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                  widget.onStatusSelected(_selectedStatus);
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Warm Lead'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 'Cold Lead',
              groupValue: _selectedStatus,
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                  widget.onStatusSelected(_selectedStatus);
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Cold Lead'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 'Hot Lead',
              groupValue: _selectedStatus,
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                  widget.onStatusSelected(_selectedStatus);
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Hot Lead'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 'Customer',
              groupValue: _selectedStatus,
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                  widget.onStatusSelected(_selectedStatus);
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Customer'),
          ],
        ),
      ],
    );
  }
}
