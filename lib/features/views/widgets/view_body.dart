import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_portfolio/core/utils/assets.dart';
import 'package:my_portfolio/features/views/widgets/custom_list_view.dart';
import 'package:my_portfolio/features/views/widgets/top_navbar_desktop.dart';

import 'about_section.dart';
import 'home_section.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CustomListView()),
      ],
    );
  }
}
