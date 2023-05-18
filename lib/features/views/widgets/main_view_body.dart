import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_portfolio/core/utils/assets.dart';
import 'package:my_portfolio/features/views/widgets/top_navbar.dart';

import 'about_section.dart';
import 'home_section.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopNavBar(),
              HomeSection(),
              SizedBox(
                height: 100,
              ),
              AboutSection(),
            ],
          ),
        ),
      ],
    );
  }
}
