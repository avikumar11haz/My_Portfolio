import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];
  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile: Column(
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25),
          const ProfileAnimation(),
        ],
      ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: buildHomePersonalInfo(size)),
            const ProfileAnimation(),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildHomePersonalInfo(size),
            const ProfileAnimation(),
          ],
        ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor,);

  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                  ),

                ],
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
