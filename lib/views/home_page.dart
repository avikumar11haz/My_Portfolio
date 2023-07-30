import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/views/my_portfolio.dart';
import 'package:my_portfolio/views/my_services.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('Portfolio'),
            const Spacer(),
            Text(
              'Home',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'About',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Services',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Portfolio',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Contact',
              style: AppTextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            // left: size.width * 0.1,
            // right: size.width * 0.1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Text(
                        'Hello, It\'s Me',
                        style:
                            AppTextStyles.montserratStyle(color: Colors.white),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1400),
                      child: Text(
                        'Avi kumar',
                        style: AppTextStyles.headingStyles(),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1400),
                      child: Row(
                        children: [
                          Text(
                            'And I\'m a ',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('Flutter Developer',
                                  textStyle: AppTextStyles.montserratStyle(
                                      color: AppColors.themeColor)),
                              TyperAnimatedText('Full Stack Developer',
                                  textStyle: AppTextStyles.montserratStyle(
                                      color: AppColors.themeColor)),
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInDown(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          'Lorem ipsum is derived from the Latin'
                          '"dolorem ipsum" roughly translated as'
                          '"pain itself."',
                          style: AppTextStyles.normalStyle(),
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 22),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: Row(
                        children: [
                          buildSocialButton(asset: AppAssets.facebook),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.twitter),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.linkedIn),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.insta),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.github)
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 18),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: AppButtons.buildMaterialButton(
                          onTap: () {}, buttonName: 'Download CV'),
                    )
                  ],
                ),
                const ProfileAnimation(),
              ],
            ),
            const SizedBox(
              height: 220,
            ),
            const AboutMe(),
            const MyServices(),
            const MyPortfolio()
          ],
        ),
      ),
    );
  }


  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(500.0),
        splashColor: AppColors.lawGreen,
        hoverColor: AppColors.aqua,
        onTap: () {},
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: AppColors.themeColor,
          //fit: BoxFit.contain,
        ),
      ),
    );
  }
}
