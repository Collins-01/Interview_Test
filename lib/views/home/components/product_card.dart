import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/widgets/app_text.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      margin: SizeConfig.appPadding,
      height: getProportionatefontSize(220),
      // color: Colors.blue,
      width: getProportionatefontSize(261),
      

      child: Column(
        children: [
          Container(
              height: getProportionatefontSize(148),
              width: getProportionatefontSize(261),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                image: DecorationImage(
                    image: AssetImage('assets/images/food.png'),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                        child: Container(
                          child: AppText(
                            content: '30-40mins',
                            fontSize: getProportionatefontSize(12),
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                          height: getProportionatefontSize(40),
                          width: getProportionatefontSize(110),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    //
                    AppText(
                      content: 'Jollof rice and chicken',
                      fontSize: getProportionatefontSize(14),
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColor,
                    ),
                    Spacer(),
                    AppText(
                      content: '₦ 2,000',
                      fontSize: getProportionatefontSize(14),
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionatefontSize(7),
                ),
                Row(
                  children: [
                    //
                    AppText(
                      content: 'kilimanjaro',
                      fontSize: getProportionatefontSize(12),
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9E9E9E),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/icons/star.svg',
                      height: getProportionatefontSize(10),
                    ),
                    SizedBox(
                      width: getProportionatefontSize(4),
                    ),
                    AppText(
                      content: '50',
                      fontSize: getProportionatefontSize(14),
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9E9E9E),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
