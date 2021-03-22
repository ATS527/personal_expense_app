import 'package:flutter/material.dart';
import './transactions.dart';
import './widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Transactions> transactions = [
    Transactions(
        id: "e1", title: "Groceries", expense: 69.99, date: DateTime.now()),
    Transactions(
        id: "e2", title: "Lamborgini", expense: 9999.9, date: DateTime.now()),
    Transactions(
        id: "e3", title: "Iphone", expense: 1000, date: DateTime.now()),
    Transactions(
        id: "e4", title: "Macbook", expense: 1220.50, date: DateTime.now()),
  ];

  TextEditingController expenseTitle = new TextEditingController();
  TextEditingController expenseAmount = new TextEditingController();

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
          Card(
            elevation: 6,
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    textAlign: TextAlign.center,
                    controller: expenseTitle,
                    decoration: InputDecoration(
                      hintText: "Enter the title",
                    ),
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: expenseAmount,
                    decoration: InputDecoration(
                      hintText: "Enter the amount",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print(expenseTitle.text);
                      print(expenseAmount.text);
                    },
                    child: Text(
                      "Add Transaction",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.purple)),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((e) {
              return expenseCard(e.expense, e.title, e.date);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
