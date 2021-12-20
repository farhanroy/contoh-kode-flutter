import 'package:flutter/material.dart';

class BelajarNavigationDrawer extends StatefulWidget {
  const BelajarNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<BelajarNavigationDrawer> createState() => _BelajarNavigationDrawerState();
}

class _BelajarNavigationDrawerState extends State<BelajarNavigationDrawer> {

  int pageIndex = 0;

  void changeIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                changeIndex(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: pageIndex,
        children: [
          _DashboardScreen(),
          _AboutScreen()
        ],
      ),
    );
  }
}

class _DashboardScreen extends StatelessWidget {
  const _DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _AboutScreen extends StatelessWidget {
  const _AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

