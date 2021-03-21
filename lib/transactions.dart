import 'package:flutter/foundation.dart';

class Transactions {
  final String id;
  final String title;
  final double expense;
  final DateTime date;

  Transactions(
      {@required this.id,
      @required this.title,
      @required this.expense,
      @required this.date});
}
