import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';

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
            Text('Home', style: AppTextStyles.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('About', style: AppTextStyles.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('Services', style: AppTextStyles.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('Portfolio', style: AppTextStyles.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('Contact', style: AppTextStyles.headerTextStyle(),),
            const SizedBox(width: 30,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: size.height * 0.3, left: size.width * 0.2, right: size.width * 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello, It\'s Me', style: AppTextStyles.montserratStyle(color: Colors.white),),
                    Constants.sizedBox(height: 15),
                    Text('Avi kumar', style: AppTextStyles.headingStyles(),),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        Text('And I\'m a ', style: AppTextStyles.montserratStyle(color: Colors.white),),
                        AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText('Flutter Developer',
                              textStyle: AppTextStyles.montserratStyle(color: Colors.lightBlue)),
                          TyperAnimatedText('Full Stack Web Developer',
                              textStyle: AppTextStyles.montserratStyle(color: Colors.lightBlue)),
                        ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,)
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        'Everyone knows that paper is made from trees.'
                          'But when one looks at trees,',
                        style: AppTextStyles.normalStyle(),),
                    ),
                    Constants.sizedBox(height: 22),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 22,
                          backgroundColor: AppColors.themeColor,
                          child: CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: AppColors.bgColor,
                            child: Image.asset(AppAssets.facebook,
                            width: 20,
                            height: 18,),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
