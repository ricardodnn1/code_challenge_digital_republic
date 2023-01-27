import 'package:code_challenge/app/calculate/presenter/controller/calculate_controller.dart';
import 'package:code_challenge/app/calculate/presenter/wall_four_page.dart';
import 'package:code_challenge/app/calculate/presenter/wall_one_page.dart';
import 'package:code_challenge/app/calculate/presenter/wall_three_page.dart';
import 'package:code_challenge/app/calculate/presenter/wall_two_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalculatePage extends StatelessWidget {
  const CalculatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<CalculateController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('CODE CHALLENGE'),
        backgroundColor: Color(0xFFf58614),
      ),
      body: PageView(
        controller: controller.pageController,
        children: [
          WallOnePage(context: context, controller: controller),
          const WallTwoPage(),
          const WallThreePage(),
          const WallFourPage()
        ],
      ),
    );
  }
}