import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget expenseCard(double expense, String title, DateTime date) {
  String formattedDate = DateFormat.MMMd().format(date);
  return Card(
    child: Row(
      children: <Widget>[
        Container(
          child: Text(
            "\$$expense",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 25,
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.purple),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$formattedDate ${date.year}",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
