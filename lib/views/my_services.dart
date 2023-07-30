import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          ),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: buildAnimatedContainer(
                      title: 'App Development',
                      asset: AppAssets.code,
                      hover: isApp)),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'Graphic Designing',
                    asset: AppAssets.brush,
                    hover: isGraphic),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'Digital Marketing',
                    asset: AppAssets.analyst,
                    hover: isDataAnalyst),
              )
            ],
          )
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer(
      {required String title, required String asset, required bool hover}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 400 : 390,
      height: hover ? 440 : 430,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
          color: AppColors.bgColor2,
          borderRadius: BorderRadius.circular(30),
          border: hover ? Border.all(color: AppColors.themeColor, width: 3

          ) : null,
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5))
          ]),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'A successful Mobile application developer should be'
            'able to demonstrate in the Mobile Application Developer'
            'Resume chief skill sets such as –'
            'Objective – C, C#, and Swift, possess experience with API’s and third-party libraries and be familiar with OOP design principles.',
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(buttonName: "Read More", onTap: () {})
        ],
      ),
    );
  }
}
