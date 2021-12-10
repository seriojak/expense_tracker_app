import 'package:flutter/material.dart';

import '../screens/timeline_screen.dart';
import '../screens/wallets_screen.dart';
import '../screens/add_transaction_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> _pages;

  @override
  void initState() {
    _pages = [
      {'page': const TimelineScreen(), 'title': 'Timeline'},
      {'page': const WalletsScreen(), 'title': 'Wallets'},
    ];

    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void handleAddTransactionPressed(BuildContext context) {
    // Navigate to AddTransactionScreen

    Navigator.of(context).pushNamed(AddTransactionScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        tooltip: 'Add a Transaction',
        onPressed: () => handleAddTransactionPressed(context),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ToDo: add labels
          children: [
            IconButton(
              icon: const Icon(Icons.timeline),
              color: Colors.lightGreen,
              tooltip: 'Timeline',
              onPressed: () {
                // Navigate to TimelineScreen
                setState(() {
                  _selectedPageIndex = 0;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_balance_wallet),
              color: Colors.lightGreen,
              tooltip: 'Wallets',
              onPressed: () {
                // Navigate to WalletsScreen
                setState(() {
                  _selectedPageIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
