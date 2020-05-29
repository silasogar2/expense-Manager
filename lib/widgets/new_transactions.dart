import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTxt;

  NewTransaction(this.addTxt);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final finalTxt = titleController.text;
    final finalAmt = double.parse(amountController.text);

    if (finalTxt.isEmpty || finalAmt <= 0) {
      return;
    }

    widget.addTxt(
      finalTxt,
      finalAmt,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              style: TextStyle(fontSize: 20),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitData(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Add Transaction'),
                  textColor: Colors.lightBlueAccent,
                  onPressed: submitData,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
