import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTxt;

  NewTransaction(this.addTxt);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Add Transaction'),
                  textColor: Colors.lightBlueAccent,
                  onPressed: () {
                    addTxt(
                      titleController.text,
                      double.parse(amountController.text),
                    );
//                print(titleController.text);
//                print(amountController.text);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
