import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/component/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              'My Shop',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                'assets/images/logo.jpg',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('THE TASTE OF JAPANESE FOOD',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44, color: Colors.white)),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Feel the taste of the most popular Japanese food from anywhere',
              style: GoogleFonts.dmSerifDisplay(color: Colors.white, height: 2),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
