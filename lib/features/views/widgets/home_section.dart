import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/utils/static_utils.dart';
import '../../../core/utils/assets.dart';
import 'icon_button_widget.dart';

import 'package:url_launcher/url_launcher.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150, left: 70),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'WELCOME TO MY PORTFOLIO',
                    style: GoogleFonts.montserrat(fontSize: 25),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Image.asset(AssetsData.hi, height: 30),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Doaa Abdeen',
                style: GoogleFonts.chakraPetch(
                    fontSize: 65, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText('Flutter Developer',
                        speed: const Duration(milliseconds: 50),
                        textStyle: TextStyle(
                          fontSize: 25,
                        )),
                  ]),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  IconButtonWidget(
                    onPressed: () {
                      launchURL(StaticUtils.socialLinks['facebook'] as String);
                    },
                    url: StaticUtils.socialIconURL['facebook'],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButtonWidget(
                    onPressed: () {
                      launchURL(StaticUtils.socialLinks['linkedin'] as String);
                    },
                    url: StaticUtils.socialIconURL['linkedin'],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButtonWidget(
                    onPressed: () {
                      launchURL(StaticUtils.socialLinks['instagram'] as String);
                    },
                    url: StaticUtils.socialIconURL['instagram'],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButtonWidget(
                    onPressed: () {
                      launchURL(StaticUtils.socialLinks['github'] as String);
                    },
                    url: StaticUtils.socialIconURL['github'],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

launchURL(String url) async {
  String urL = url;
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
