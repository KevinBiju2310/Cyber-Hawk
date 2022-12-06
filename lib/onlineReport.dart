import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class onlineReport extends StatefulWidget {
  const onlineReport({super.key});

  @override
  State<onlineReport> createState() => _onlineReportState();
}

class _onlineReportState extends State<onlineReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        backgroundColor: Color(0xff101010),
        title: Text('Online Reporting'),
      ),
    );
  }
}
