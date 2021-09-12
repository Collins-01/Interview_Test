import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/utils/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = SizeConfig.orientation == Orientation.portrait;

    SizeConfig().init(context);
    return Container(
      height: getProportionatefontSize(48),
      width:
          isPortrait ? getProportionatefontSize(335) : SizeConfig.screenWidth!,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffBDBDBD)),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          // suffixIcon:Icon(CupertinoIcons.filt),
          // suffix: SvgPicture.asset('assets/icons/Filter.svg',height: getProportionateAdjustedfontSize(24),),
          prefixIcon: Icon(
            CupertinoIcons.search,
            size: getProportionateAdjustedfontSize(24),
            color: Color(0xffBDBDBD),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          border: InputBorder.none,
          hintText: 'What are you gonna order today?',
          hintStyle: TextStyle(
            fontSize: getProportionatefontSize(14),
            color: Color(0xffBDBDBD),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
