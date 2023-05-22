import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/about_me.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(children: [
        Center(
            child: Text(
          'About Me ',
          style:
              GoogleFonts.montserrat(fontSize: 40, fontWeight: FontWeight.w700),
        )),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 550),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who am i ',
                      style: GoogleFonts.montserrat(
                          fontSize: 24, color: Colors.red),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Doaa Abdeen , Flutter Developer',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      AboutMe.aboutMeDetail,
                      maxLines: 3,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 88, 88)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Technologies i have worked with ',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
