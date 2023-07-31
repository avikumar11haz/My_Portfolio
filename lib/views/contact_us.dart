import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
                text: TextSpan(
                    text: 'Contact ',
                    style: AppTextStyles.headingStyles(fontSize: 30),
                    children: [
                      TextSpan(
                        text: 'Me!',
                        style: AppTextStyles.headingStyles(
                            fontSize: 30, color: AppColors.robinEdgeBlue),
                      )
                    ])),
          ),
          Constants.sizedBox(height: 40),

        ],
      ),
    );
  }
}
