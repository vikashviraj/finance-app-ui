import 'package:flutter/material.dart';

class OverViewSection extends StatelessWidget {
  const OverViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      //height: 150,
      width: double.infinity,
      child: Card(
        color: const Color(0x227E88C6),
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFF1698FF), width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'INVESTMENT OVERVIEW',
                        style: TextStyle(
                          color: Color(0xFFF5D580),
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '86 Lakhs',
                            style: TextStyle(
                              color: Color(0xFFC6E6FF),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '45K | 2.3%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            size: 14,
                            color: Color(0xFF18CB3F),
                          ),
                        ],
                      )
                    ],
                  ),
                  Card(
                    color: const Color(0xFF3D4260),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          color: Color(0xFFB5B7C3),
                        ),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(children: const [
                          Text(
                            'View',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 16,
                            color: Colors.white,
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0x25FFFFFF),
              //height: 70,
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 15,
              ),
              child: SizedBox(
                height: 180,
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 3,
                  children: <Widget>[
                    overViewIcon(
                        iconPath: 'assets/icons/gold.png',
                        title: 'Gold',
                        subtitle: '14.56Lakhs'),
                    overViewIcon(
                        iconPath: 'assets/icons/mutual-fund.png',
                        title: 'Mutual Fund',
                        subtitle: '14.56Lakhs'),
                    overViewIcon(
                        iconPath: 'assets/icons/smart-deposite.png',
                        title: 'Smart Deposit',
                        subtitle: '14.56Lakhs'),
                    overViewIcon(
                        iconPath: 'assets/icons/epf.png',
                        title: 'EPF',
                        subtitle: '14.56Lakhs'),
                    overViewIcon(
                        iconPath: 'assets/icons/fixed-deposite.png',
                        title: 'Fixed Deposite',
                        subtitle: '14.56Lakhs'),
                    overViewIcon(
                        iconPath: 'assets/icons/nps.png',
                        title: 'NPS',
                        subtitle: '14.56Lakhs')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column overViewIcon(
      {required String iconPath,
      required String title,
      required String subtitle}) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          width: 42,
          child: Card(
            color: const Color(0xFF080D33),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                iconPath,
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 9,
          ),
        ),
        Text(subtitle,
            style: const TextStyle(
              color: Color(0xFFC7E3FC),
              fontSize: 8,
            )),
      ],
    );
  }
}
