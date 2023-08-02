

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile: Column(
          children: [
            buildAboutMeContents(),
            Constants.sizedBox(height: 35),
            buildProfilePicture(),
          ],
        ),
        tablet: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(width: 25),
            Expanded(child: buildAboutMeContents())
          ],
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(width: 25),
            Expanded(child: buildAboutMeContents())
          ],
        ),
        paddingWidth: size.width * 0.1,
        bgColor: AppColors.bgColor2,
      );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
              text: TextSpan(
                  text: 'About',
                  style: AppTextStyles.headingStyles(fontSize: 30),
                  children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                )
              ])),
        ),
        Constants.sizedBox(height: 6),
        FadeInLeft(
            duration: const Duration(milliseconds: 1600),
            child: Text(
              'Flutter Developer!',
              style: AppTextStyles.montserratStyle(color: Colors.white),
            )),
        Constants.sizedBox(height: 8),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'kjosjjlj kjij jjoej  jjfosj jijso sjg '
            'jfiej jijsojg ijoj  jfos f og e  ehl o is go '
            'dijfofjeoj jgofo osfjof fsofjs ogeojsz  ljf'
            'fjefoie of pefn ff hfoe ojf  ofo ojs os fso s so fs  fjsk',
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {}, buttonName: 'Read More'),
        )
      ],
    );
  }
}
