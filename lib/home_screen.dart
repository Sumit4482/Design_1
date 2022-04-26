import 'package:day_1/dashboard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 150, 40, 40),
            child: Image.asset("assets/Illustration.png"),
          ),
          const Text(
            "Hey Luke,\n there's new course for you!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Find out how our new matching tool\n can help you achieve your goals.",
            style: TextStyle(
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DashBoard()),
                  );
                },
                child: const Text(
                  "Discover the course",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 78, 75, 250),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Not now",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
