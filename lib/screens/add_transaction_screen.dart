import 'package:flutter/material.dart';

class AddTransactionScreen extends StatelessWidget {
  static const routeName = '/add-transaction';

  const AddTransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Transaction'),
      ),
      body: Center(
        child: Text('Add Transaction Screen'),
      ),
    );
  }
}
