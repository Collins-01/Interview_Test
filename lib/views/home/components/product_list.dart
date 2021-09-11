import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/widgets/app_text.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required this.isPortrait,
    required this.label,
  }) : super(key: key);

  final bool isPortrait;
  final String label;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getProportionatefontSize(278),
      width: isPortrait
          ? getProportionatefontSize(375)
          : SizeConfig.screenWidth!,
      decoration: BoxDecoration(color: Color(0xffFFFFFF)),
      child: Container(
        margin: SizeConfig.appPadding,
        child: Column(
          children: [
            //
            Container(
              child: Row(
                children: [
                  AppText(
                    content: "$label",
                    fontSize: getProportionatefontSize(18),
                    fontWeight: FontWeight.w600,
                    color: Color(0xff282B33),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.arrow_right,
                    color: AppColors.primaryColor,
                  )
                ],
              ),

              //
            ),
            SizedBox(
              height: getProportionatefontSize(10),
            ),
            Container(
              height: getProportionatefontSize(213),
              // color: Colors.blue,
              width: getProportionatefontSize(375),

              child: Column(
                children: [
                  Container(
                      height: getProportionatefontSize(148),
                      width: getProportionatefontSize(375),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/food.png'),
                          fit: BoxFit.cover
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                        
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              child: AppText(
                                content: '30-40mins',
                                fontSize:
                                    getProportionatefontSize(14),
                                fontWeight: FontWeight.w700,
                                color: AppColors.textColor,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color:
                                      Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(6))),
                              height: getProportionatefontSize(40),
                              width: getProportionatefontSize(110),
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
                              content: 'Jollof rice and chicken',
                              fontSize: getProportionatefontSize(12),
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9E9E9E),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                                'assets/icons/start.svg'),
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
            )
          ],
        ),
      ),
    );
  }
}
