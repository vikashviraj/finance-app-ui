import 'package:flutter/material.dart';

class ProfileInsight extends StatelessWidget {
  const ProfileInsight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 18,
        top: 19,
      ),
      child: Card(
        color: const Color(0x557E88C6),
        borderOnForeground: true,
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22.5,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Insight of',
                        style: TextStyle(
                          color: Color(0xFFF3D19E),
                          fontSize: 10.27,
                        ),
                      ),
                      Text(
                        'Your Networth',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.01,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    '₹ 34.87',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Lakhs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.71,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '2.36%',
                        style: TextStyle(
                          color: Color(0xFF18CB3F),
                          fontSize: 7.71,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_drop_up,
                    size: 22,
                    color: Color(0xFF18CB3F),
                  )
                ],
              ),
              const Divider(
                color: Color(0xFFA0A4D0),
                thickness: 0.8,
              ),
              Row(
                children: [
                  const Text(
                    'Track Your Networth In \nReal Time',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Asset',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '₹ 34.87 L',
                        style: TextStyle(
                          color: Color(0xFFF5CD7F),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Liablities',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'NA',
                        style: TextStyle(
                          color: Color(0xFFFDA0A0),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
