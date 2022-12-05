import 'package:flutter/material.dart';
import 'package:sample/homescreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff13131D),
        appBar: AppBar(
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 110, 101, 101),
              backgroundImage: AssetImage("assets/logo.png"),
              radius: 20,
            ),
          ),
          backgroundColor: const Color(0xff13131D),
          title: const Text(
            '    CYBER HAWK',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 150, left: 10),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xff13131D),
                  child: const TextField(
                    style: TextStyle(color: Color(0xff686883)),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xff686883),
                        ),
                        hintText: 'Enter Username',
                        hintStyle: TextStyle(color: Color(0xff686883))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xff13131D),
                  child: const TextField(
                    style: TextStyle(color: Color(0xff686883)),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff686883),
                        ),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Color(0xff686883))),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password ?",
                    style: TextStyle(color: Color(0xff686883)),
                  )),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  color: const Color(0xffFFB11F),
                  minWidth: 20,
                  height: 53,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 160),
                        child: Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                "Don't have an account? Create Account",
                style: TextStyle(color: Color(0xff686883)),
              ))
            ],
          ),
        ));
  }
}
