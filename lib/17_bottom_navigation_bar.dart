import 'package:flutter/material.dart';

class BelajarBottomNavBar extends StatefulWidget {
  const BelajarBottomNavBar({Key? key}) : super(key: key);

  @override
  State<BelajarBottomNavBar> createState() => _BelajarBottomNavBarState();
}

class _BelajarBottomNavBarState extends State<BelajarBottomNavBar> {
  int _selectedNavbar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Bar"),
      ),
      body: IndexedStack(
          index: _selectedNavbar,
          children: <Widget>[
            Text("Halaman Beranda"),
            Text("Halaman Pesanan"),
            Text("Halaman Inbox"),
            Text("Halaman Pengaturan"),
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda',),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Pesanan',),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Inbox',),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Pengaturan',),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }

  void _changeSelectedNavBar(int index) {
    setState(() {_selectedNavbar = index;});
  }
}
