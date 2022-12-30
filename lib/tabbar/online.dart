import 'package:flutter/material.dart';
import 'package:sample/bottomBar.dart';
import 'package:sample/tabbar/offline.dart';

// ignore: camel_case_types
class online extends StatefulWidget {
  const online({super.key});

  @override
  State<online> createState() => _onlineState();
}

// ignore: camel_case_types
class _onlineState extends State<online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff171717),
      //   title: const Text('Reports'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 40,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 45),
            //     child: Row(
            //       children: const [
            //         Text(
            //           'Online',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         SizedBox(
            //           width: 90,
            //         ),
            //         Text(
            //           'Offline',
            //           style: TextStyle(color: Colors.white),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Container(
                          height: 75,
                          width: double.infinity,
                          color: const Color(0xff373749D2),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 110, 101, 101),
                                  backgroundImage:
                                      AssetImage('assets/logo.png'),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xff848484))),
                                          child: const Text(
                                            'Instagram',
                                            style: TextStyle(
                                                color: Color(0xff848484),
                                                fontSize: 12),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xff848484))),
                                          child: const Text(
                                            'Suspect',
                                            style: TextStyle(
                                                color: Color(0xff848484),
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Hunting/Poaching',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      'https://in.images.search.yahoo.com/yhs/search;_E',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white,
      //   backgroundColor: Colors.black,
      //   items: const [
      //     BottomNavigationBarItem(
      //         backgroundColor: Colors.white,
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.white,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person,
      //           color: Colors.white,
      //         ),
      //         label: 'Profile')
      //   ],
      // )
    );
  }
}
