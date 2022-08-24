import 'package:flutter/material.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 21,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile.png',
            height: 45,
            width: 45,
          ),
          const SizedBox(
            width: 6,
          ),
          Column(children: [
            Row(
              children: [
                const Text(
                  'Hey Manoj',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('assets/icons/hey.png'),
              ],
            ),
            const Text(
              'Good Morning!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ]),
          const Spacer(),
          Card(
              elevation: 5,
              color: const Color(0x887E88C6),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 11.23, right: 9, left: 8, bottom: 3.86),
                child: Stack(clipBehavior: Clip.none, children: [
                  Image.asset('assets/icons/cart.png'),
                  Positioned(
                    right: -4,
                    top: -7,
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF84F4F),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                          child: Text(
                        '12',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  )
                ]),
              )),
        ],
      ),
    );
  }
}
