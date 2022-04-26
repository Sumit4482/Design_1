import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
  String img;
  String title;
  String time;
  String tag;

  Cards({
    Key? key,
    required this.img,
    required this.title,
    required this.tag,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey[300],
                ),
                height: 20,
                width: 70,
                child: Row(
                  children: [
                    Text(
                      "  $tag",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromRGBO(91, 63, 255, 1)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                time,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }
}
