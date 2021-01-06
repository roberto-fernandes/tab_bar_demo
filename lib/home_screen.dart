import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.alarm),
                text: 'ALARM',
              ),
              Tab(
                icon: Icon(Icons.money),
                text: 'MONEY',
              ),
              Tab(
                icon: Icon(Icons.battery_alert),
                text: 'BATTERY',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabView1(),
            TabView2(),
            TabView3(),
          ],
        ),
      ),
    );
  }
}

class TabView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'ALARM',
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
      ),
    );
  }
}

class TabView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'MONEY',
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
      ),
    );
  }
}

class TabView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Text(
          'BATTERY',
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
      ),
    );
  }
}
