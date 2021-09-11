import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/home/components/product_card.dart';
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
      width:
          isPortrait ? getProportionatefontSize(375) : SizeConfig.screenWidth!,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(7, (index) => ProductCard()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
