import 'package:flutter/material.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/widgets/app_text.dart';

class AdvertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Container(
        margin: SizeConfig.appPadding,
          height: getProportionatefontSize(132),
          width: SizeConfig.screenWidth!,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/advert.png'),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionatefontSize(5),
                ),
                AppText(
                  content: 'Get 10% off your first order!',
                  fontSize: getProportionatefontSize(16),
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                SizedBox(
                  height: getProportionatefontSize(5),
                ),
                AppText(
                  content: 'Use code code URSXVN on orders \nabove ₦5000',
                  fontSize: getProportionatefontSize(12),
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                Expanded(child: SizedBox()),
                Container(
                  height: getProportionatefontSize(36),
                  width: getProportionatefontSize(111),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                  child: AppText(
                    content: 'Order Now',
                    fontSize: getProportionatefontSize(15),
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
