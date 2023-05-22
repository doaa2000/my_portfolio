import 'package:flutter/material.dart';
import 'package:my_portfolio/features/views/widgets/top_navbar_desktop.dart';

import 'about_section.dart';
import 'home_section.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeSection(),
              SizedBox(
                height: 150,
              ),
              AboutSection(),
            ],
          ),
        ),
      ],
    );
  }
}
