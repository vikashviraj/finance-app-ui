import 'package:flutter/material.dart';

class LiveMarket extends StatelessWidget {
  const LiveMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      height: 150,
      width: double.infinity,
      child: Card(
        color: const Color(0x557E88C6),
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'LIVE MARKET INDEX',
                style: TextStyle(
                  fontSize: 9,
                  color: Color(0xFFF5D580),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 85,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  liveIndexCard(
                      marketName: 'BSE SENSEX',
                      marketColor: const Color(0xFF1E68E9),
                      arrow: Icons.arrow_upward_rounded,
                      percent: '2.36%',
                      currentValue: '54,040.06',
                      valueIncrement: '263.15',
                      date: '14 Jul 2022 3.30 PM'),
                  liveIndexCard(
                      marketName: 'NIFTYF FIFTY',
                      marketColor: const Color(0xFF08ADE1),
                      arrow: Icons.arrow_upward_rounded,
                      percent: '2.36%',
                      currentValue: '54,040.06',
                      valueIncrement: '263.15',
                      date: '14 Jul 2022 3.30 PM'),
                  liveIndexCard(
                      marketName: 'Gold',
                      marketColor: const Color(0xFFDEA410),
                      arrow: Icons.arrow_upward_rounded,
                      percent: '2.36%',
                      currentValue: '54,040.06',
                      valueIncrement: '263.15',
                      date: '14 Jul 2022 3.30 PM')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox liveIndexCard(
      {required String marketName,
      required Color marketColor,
      required IconData arrow,
      required String percent,
      required String currentValue,
      required String valueIncrement,
      required String date}) {
    return SizedBox(
      width: 160,
      child: Card(
        color: const Color(0x557E88C6),
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 9,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: marketColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3.0, horizontal: 5),
                      child: Text(
                        marketName,
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    arrow,
                    color: const Color(0xFF18CB3F),
                    size: 18,
                  ),
                  Text(
                    percent,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    currentValue,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    valueIncrement,
                    style: const TextStyle(
                      fontSize: 9,
                      color: Color(0xFF18CB3F),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 8,
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
