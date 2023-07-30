import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';

class MyServices extends StatelessWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
                text: TextSpan(
                    text: 'My',
                    style: AppTextStyles.headingStyles(fontSize: 30),
                    children: [
                  TextSpan(
                    text: 'Services',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  )
                ])),
          )
        ],
      ),
    );
  }
}
