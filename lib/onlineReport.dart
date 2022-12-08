import 'package:flutter/material.dart';
import 'package:sample/bottomBar.dart';

class OnlineReport extends StatefulWidget {
  const OnlineReport({super.key});

  @override
  State<OnlineReport> createState() => _OnlineReportState();
}

class _OnlineReportState extends State<OnlineReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        backgroundColor: Color(0xff101010),
        title: Text('Online Reporting'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Select a crime type',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
              
          )
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
