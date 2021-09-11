import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/widgets/app_text.dart';

class SocialMediaButton extends StatelessWidget {
  final String? icon;
  final String? content;
  final Color? textColor;
  final bool? hasBorder;
  final VoidCallback? callback;
  final Color? buttonColor;


  const SocialMediaButton({
    Key? key,
    this.icon,
    this.callback,
    this.buttonColor,
    this.hasBorder = false,
    this.content,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: callback,
      child: Container(
        alignment: Alignment.center,
        height: getProportionatefontSize(41.07),
        width: getProportionatefontSize(148),
        decoration: BoxDecoration(
          //
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: buttonColor,
          border: Border.all(
            color: Color(0xffC5CEE0),
            width: 1
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            SvgPicture.asset(icon!),
            SizedBox(
              width: getProportionatefontSize(5),
            ),
            AppText(
              content: content,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
