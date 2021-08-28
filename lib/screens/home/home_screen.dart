import 'package:flutter/material.dart';
import 'package:portfolio_andres_diaz/screens/main/main_screen.dart';

import 'components/hight_light.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HightLightInfo(),
      MyProjects(),
      Recommendations()
    ]);
  }
}
