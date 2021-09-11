import 'package:flutter/material.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';

class AppText extends StatelessWidget {
  final String? content;
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;
 final bool isCenter;
 final bool isElipses;
  const AppText({
    Key? key,
    this.content,
    this.isElipses=false,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.isCenter=false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      content!,
      textAlign: isCenter?TextAlign.center:TextAlign.left,
      overflow: isElipses? TextOverflow.ellipsis:TextOverflow.visible,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.textColor,
        fontSize: fontSize ?? getProportionatefontSize(14),
        letterSpacing: 0.1,
      ),
    );
  }
}
