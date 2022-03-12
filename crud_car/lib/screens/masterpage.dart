import 'package:crud_car/models/cewe_model.dart';
import 'package:crud_car/screens/screens.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int _currentIndex = 0;

  var pages = [
    HomePage(),
    AddOrUpdatePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (value) => setState(() => _currentIndex = value),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu, size: 30.0), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, size: 30.0), label: 'Add'),
        ],
      ),
    );
  }
}
