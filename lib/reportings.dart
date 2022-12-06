import 'package:flutter/material.dart';
import 'package:sample/bottomBar.dart';
import 'package:sample/onlineReport.dart';

class reportings extends StatefulWidget {
  const reportings({super.key});

  @override
  State<reportings> createState() => _reportingsState();
}

class _reportingsState extends State<reportings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        backgroundColor: Color(0xff101010),
        title: Text('Report'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => onlineReport()));
                }),
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      Image.asset('assets/browser.png'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Online Reporting',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Column(
                  children: [
                    Image.asset('assets/map.png'),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Field Reporting',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
