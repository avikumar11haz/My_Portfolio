import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/views/contact_us.dart';
import 'package:my_portfolio/views/footer_class.dart';
import 'package:my_portfolio/views/my_portfolio.dart';
import 'package:my_portfolio/views/my_services.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];
  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];
  var menuIndex = 0;
  var socialBI;

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
            SizedBox(
              height: 30,
              child: ListView.separated(
                itemCount: menuItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, child) =>
                    Constants.sizedBox(width: 8),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(100),
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          menuIndex = index;
                        } else {
                          menuIndex = 0;
                        }
                      });
                    },
                    child: buildNavBarAnimatedContainer(
                        index, menuIndex == index ? true : false),
                  );
                },
              ),
            ),
            // Text(
            //   'Home',
            //   style: AppTextStyles.headerTextStyle(),
            // ),
            // const SizedBox(
            //   width: 30,
            // ),
            // Text(
            //   'About',
            //   style: AppTextStyles.headerTextStyle(),
            // ),
            // const SizedBox(
            //   width: 30,
            // ),
            // Text(
            //   'Services',
            //   style: AppTextStyles.headerTextStyle(),
            // ),
            // const SizedBox(
            //   width: 30,
            // ),
            // Text(
            //   'Portfolio',
            //   style: AppTextStyles.headerTextStyle(),
            // ),
            // const SizedBox(
            //   width: 30,
            // ),
            // Text(
            //   'Contact',
            //   style: AppTextStyles.headerTextStyle(),
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 30, horizontal: size.width * 0.1),
              child: Row(
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
                          style: AppTextStyles.montserratStyle(
                              color: Colors.white),
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
                        child: SizedBox(
                          height: 48,
                          child: ListView.separated(
                            itemCount: socialButtons.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, child) =>
                              Constants.sizedBox(width: 8),
                              itemBuilder: (context, index){
                              return InkWell(
                                onTap: (){},
                                onHover: (value){
                                  setState(() {
                                    if(value){
                                      socialBI = index;
                                    }else{
                                      socialBI = null;
                                    }
                                  });
                                },
                                borderRadius: BorderRadius.circular(550.0),
                                hoverColor: AppColors.themeColor,
                                splashColor: AppColors.lawGreen,
                                child: buildSocialButton(
                                    asset: socialButtons[index],
                                hover: socialBI == index ? true : false),
                              );
                              }),
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
            ),
            const SizedBox(
              height: 220,
            ),
            const AboutMe(),
            const MyServices(),
            const MyPortfolio(),
            const ContactUs(),
            const FooterClass()
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
      ),
    );
  }
}
