import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transactions.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 400.70,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Weekly Grocies',
      amount: 4500.70,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txtTitle, double txtAmount) {
    final newTx = Transaction(
      title: txtTitle,
      amount: txtAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
