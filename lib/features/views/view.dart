import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_portfolio/features/views/widgets/view_body.dart';
import 'package:my_portfolio/features/views/widgets/responsive_widget.dart';
import 'package:my_portfolio/features/views/widgets/top_navbar_desktop.dart';
import 'package:my_portfolio/features/views/widgets/top_navbar_mobile.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 70),
          child:
              Responsive.isMobile(context) ? TopNavBarMobile() : TopNavBar()),
      backgroundColor: Colors.white,
      body: MainViewBody(),

      //MainViewBody(),
    );
  }
}
