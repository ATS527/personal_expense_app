import 'package:flutter/material.dart';
import './transactions.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        id: "e1", title: "Groceries", expense: 69.99, date: DateTime.now()),
    Transactions(
        id: "e2", title: "Lamborgini", expense: 9999.99, date: DateTime.now()),
    Transactions(
        id: "e3", title: "Iphone", expense: 1000, date: DateTime.now()),
    Transactions(
        id: "e4", title: "Macbook", expense: 1220.50, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expense App"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            width: double.infinity,
            padding: EdgeInsets.all(5.0),
            child: Card(
              elevation: 5,
              child: Text(
                "Personal Expense chart //todo",
                textAlign: TextAlign.center,
              ),
              color: Colors.amberAccent,
            ),
          ),
          Column(
            children: transactions.map((e) {
              return Card(
                child: Text(e.title),
                color: Colors.red,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
