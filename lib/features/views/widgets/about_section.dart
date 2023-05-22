import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import '../../../core/utils/about_me.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTextStyle.merge(
      style: const TextStyle(
        fontSize: 16.0,
        //fontFamily: 'monospace',
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 550, right: 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Who am i ',
                style: GoogleFonts.montserrat(fontSize: 24, color: Colors.red),
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
              ReadMoreText(
                AboutMe.aboutMeDetail,
                trimLines: 3,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'show more',
                trimExpandedText: 'show less',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
