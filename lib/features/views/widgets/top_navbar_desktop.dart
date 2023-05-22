import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:html' as html;
import '../../../core/utils/assets.dart';
import '../../../core/utils/static_utils.dart';
import 'mouse_region_widget.dart';

ScrollController controller = ScrollController();

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 600),
            child: Row(
              children: [
                MouseRegionWidget(
                    onPressed: () {
                      controller.animateTo(
                        1,
                        duration: Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    text: Text('Home')),
                SizedBox(
                  width: 50,
                ),
                MouseRegionWidget(
                  onPressed: () {
                    controller.animateTo(
                      1600,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  text: Text('About'),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegionWidget(
                  onPressed: () {},
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  text: Text('Projects'),
                ),
                SizedBox(
                  width: 50,
                ),
                MouseRegionWidget(
                    onPressed: () {},
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    text: Text('Contact')),
                const SizedBox(
                  width: 50,
                ),
                MouseRegionWidget(
                    onPressed: () {
                      html.window.open(
                        StaticUtils.resume,
                        "pdf",
                      );
                    },
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    text: Text(
                      'Resume',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
