import 'package:flutter/material.dart';
import 'package:sample/bottomBar.dart';
import 'package:sample/reportings.dart';
import 'package:sample/reports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131D),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff13131D),
        title: const Text("CYBER HAWK"),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 17),
              child: Text(
                "We handle your\nReportings.",
                style: TextStyle(
                    fontFamily: 'IBM',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => reportings())));
                  },
                  color: const Color(0xffFFB11F),
                  minWidth: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        "REPORT CRIME",
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: const Color(0xff373749d2),
                    child: Image.asset(
                      'assets/smartphone.png',
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: const Color(0xff373749d2),
                  child: Image.asset(
                    'assets/report.png',
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: const Color(0xff373749d2),
                    child: Image.asset(
                      'assets/data-analytics.png',
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Smartphone',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Reports',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'My analytics',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color(0xff373749D2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Recent Reports',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const reports()));
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Container(
                          height: 70,
                          width: 50,
                          color: const Color(0xff373749d2),
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
                                        Container(
                                          height: 12,
                                          width: 75,
                                          color: const Color(0xff5EBC74),
                                          child: const Text(
                                            'Online Reporting',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 12,
                                          width: 75,
                                          color: const Color(0xff848484),
                                          child: const Text(
                                            'Instagram',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 12,
                                          width: 75,
                                          color: const Color(0xff848484),
                                          child: const Text(
                                            'Suspect',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Text(
                                      'Lorem Ipsum is simply dummy text of the prin…\nhttps://in.images.search.yahoo.com/yhs/search;_E',
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
      drawer: const Drawer(),
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
