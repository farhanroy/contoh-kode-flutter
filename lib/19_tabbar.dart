import 'package:flutter/material.dart';

class BelajarTabBar extends StatelessWidget {
  const BelajarTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah item tab
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car),),
                  Tab(icon: Icon(Icons.directions_transit),),
                  Tab(icon: Icon(Icons.directions_bike),)
                ]
            )
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike)
            ],
          ),
        )
    );
  }
}
