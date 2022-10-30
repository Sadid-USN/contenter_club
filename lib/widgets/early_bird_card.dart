import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarlyBirdCard extends StatelessWidget {
  const EarlyBirdCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 * 1,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: gray04,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/earlybird.png'),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EarlyBird',
                    style: GoogleFonts.spaceGrotesk(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: black),
                    ),
                  ),
                  Text(
                    'Coffeeshop',
                    style: GoogleFonts.spaceGrotesk(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Image.asset('assets/icons/location.png'),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Dubai, Abu-Dabi',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: black),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset('assets/icons/blackclip.png'),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Brandbook',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: black),
                ),
              ),
            ],
          ),
          Expanded(
            child: Text(
              'A two-storey structure with cosy minimalist interiors and a pet-friendly terrace, LDC EarlyBird takes up a prime spot at Jumeirah Lakes Towers. The cafe-meets-bistro is a welcome addition for breakfast enthusiasts, coffee lovers and ice cream aficionados, with a menu packed with fresh selections. You’ll find everything from nutritious and naughty breakfast items to pizza, pasta, sandwiches, desserts and more. Pair these with an array of beverages, from iced or hot brews to detox juices.',
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 14, color: black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
