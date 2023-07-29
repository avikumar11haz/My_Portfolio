import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgColor2,
      child: Row(
        children: [
          Image.asset(AppAssets.profile2,
          height: 450,
          width: 400,)
        ],
      ),
    );
  }
}
