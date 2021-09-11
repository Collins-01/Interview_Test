import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/widgets/app_text.dart';

class KButtomNav extends StatelessWidget {
  const KButtomNav({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BottomNavigationBar(
        // selectedItemColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              title: AppText(
                content: 'Home',
                fontSize: getProportionatefontSize(12),
                fontWeight: FontWeight.w400,
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/orders.svg'),
              title: AppText(
                content: 'Orders',
                fontSize: getProportionatefontSize(12),
                fontWeight: FontWeight.w400,
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/location.svg'),
              title: AppText(
                content: 'Location',
                fontSize: getProportionatefontSize(12),
                fontWeight: FontWeight.w400,
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/more.svg'),
              title: AppText(
                content: 'More',
                fontSize: getProportionatefontSize(12),
                fontWeight: FontWeight.w400,
              )),
        ],
      );
  }
}