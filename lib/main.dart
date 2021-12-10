import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';
import './screens/add_transaction_screen.dart';

void main() {
  runApp(const MyApp());
}

// ToDo: 1 - Add git repository

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        TabsScreen.routeName: (_) => const TabsScreen(),
        AddTransactionScreen.routeName: (_) => const AddTransactionScreen(),
      },
    );
  }
}
