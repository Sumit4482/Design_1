import 'package:flutter/material.dart';
import 'package:day_1/cards.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 30, 0, 0),
              child: Text(
                "Your courses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Cards(
                    img: "assets/Cover_1.png",
                    tag: "Beginner",
                    time: "12 hrs",
                    title: "Design Principles",
                  ),
                  Cards(
                    img: "assets/Cover_2.png",
                    tag: "Beginner",
                    time: "12 hrs",
                    title: "Design Principles",
                  ),
                  Cards(
                    img: "assets/Cover_3.png",
                    tag: "Beginner",
                    time: "12 hrs",
                    title: "Design Principles",
                  ),
                  Cards(
                    img: "assets/Cover_1.png",
                    tag: "Beginner",
                    time: "12 hrs",
                    title: "Design Principles",
                  ),
                  Cards(
                    img: "assets/Cover_2.png",
                    tag: "Beginner",
                    time: "12 hrs",
                    title: "Design Principles",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                "Achievements",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 20),
                  child: Image.asset("assets/logo_1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 20),
                  child: Image.asset("assets/logo_2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 20),
                  child: Image.asset(
                    "assets/logo_3.png",
                    color: Colors.black,
                  ),
                ),
                Image.asset(
                  "assets/logo_4.png",
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                "Most active users",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 20, 5, 0),
                  child: Image.asset("assets/user_1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20, 5, 0),
                  child: Image.asset("assets/user_2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20, 5, 0),
                  child: Image.asset("assets/user_3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20, 5, 0),
                  child: Image.asset("assets/user_4.png"),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_1.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_2.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bottom_3.png")),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 136, 59, 229),
        onTap: _onItemTapped,
      ),
    );
  }
}
