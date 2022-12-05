import 'package:flutter/material.dart';
import 'package:sample/tabbar/offline.dart';
import 'package:sample/tabbar/online.dart';

class reports extends StatefulWidget {
  const reports({super.key});

  @override
  State<reports> createState() => _reportsState();
}

class _reportsState extends State<reports> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff171717),
        appBar: AppBar(
          backgroundColor: Color(0xff171717),
          title: const Text('Reports'),
          bottom: const TabBar(indicatorColor: Colors.amber, tabs: [
            Text(
              'online',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'offline',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ]),
        ),
        body: TabBarView(children: [online(), offline()]),
      ),
    );
  }
}
