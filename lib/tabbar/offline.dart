import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class offline extends StatefulWidget {
  const offline({super.key});

  @override
  State<offline> createState() => _offlineState();
}

class _offlineState extends State<offline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1C1C),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/parrot.jpg',
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xff848484))),
                  child: const Text(
                    'Instagram',
                    style: TextStyle(color: Color(0xff848484), fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 0),
                child: Text(
                  'Wild pet trade',
                  style: TextStyle(
                      fontFamily: 'IBM',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 1),
                child: Text(
                  'https://in.images.search.yahoo.com/yhs/search;_E',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff272727),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10, spreadRadius: 4)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Aware of Species',
                            style: TextStyle(color: Colors.white),
                          ),
                          ToggleSwitch(
                            customWidths: [85],
                            cornerRadius: 80,
                            activeBgColors: [
                              [Colors.green],
                            ],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            totalSwitches: 1,
                            labels: ['YES'],
                            onToggle: (index) {
                              print('switched to: $index');
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Is there any suspect',
                            style: TextStyle(color: Colors.white),
                          ),
                          ToggleSwitch(
                            customWidths: [85],
                            cornerRadius: 80,
                            activeBgColors: [
                              [Colors.grey],
                            ],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            totalSwitches: 1,
                            labels: ['NO'],
                            onToggle: (index) {
                              print('switched to: $index');
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Send Anonymously',
                            style: TextStyle(color: Colors.white),
                          ),
                          ToggleSwitch(
                            customWidths: [85],
                            cornerRadius: 80,
                            activeBgColors: [
                              [Colors.grey],
                            ],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            totalSwitches: 1,
                            labels: ['NO'],
                            onToggle: (index) {
                              print('switched to: $index');
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xff272727),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10, spreadRadius: 4)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Comments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 17),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indus try’s standard dummy text ever since the 1500s',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Profile')
          ],
        ));
  }
}
