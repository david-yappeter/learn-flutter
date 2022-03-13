import "package:flutter/material.dart";
import "package:tab_bar/util/colors.dart";

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      // length: 4,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          // bottom: ,
          title: const Text('Tabs Demo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          color: Colors.blue[900],
          child: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_balance_wallet)),
              Tab(icon: Icon(Icons.query_stats)),
              SizedBox(width: 10.0),
              Tab(icon: Icon(Icons.update)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Text('Temporary'),
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            SizedBox(),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.settings, size: 350),
          ],
        ),
      ),
    );
    
  }
}
