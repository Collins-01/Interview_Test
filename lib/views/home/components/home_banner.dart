import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/home/components/build_search_box.dart';
import 'package:interview_test/views/home/view_models/home_view_model.dart';
import 'package:interview_test/widgets/app_text.dart';

// ignore: must_be_immutable
class HomeBanner extends StatelessWidget {
  HomeViewModel model;
  HomeBanner({required this.model});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: getProportionatefontSize(24),
          ),
          SearchField(),
          SizedBox(
            height: getProportionatefontSize(24),
          ),
          Container(
            margin: SizeConfig.appPadding,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  model.items.length,
                  (index) => GestureDetector(
                    onTap: () {
                      model.setIndex(index);
                    },
                    child: AnimatedContainer(
                      margin: EdgeInsets.only(right: 12),
                      height: getProportionatefontSize(41),
                      width: getProportionatefontSize(122),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: model.selectedIndex == index
                              ? AppColors.primaryColor
                              : Color(0xffE54D3A).withOpacity(.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          )),
                      duration: Duration(milliseconds: 350),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //
                          SvgPicture.asset(
                            "${model.items[index]['icon']}",
                            color: model.selectedIndex == index
                                ? Colors.white
                                : AppColors.textColor,
                            height: getProportionateAdjustedfontSize(20),
                          ),
                          SizedBox(
                            width: getProportionatefontSize(7),
                          ),
                          AppText(
                            content: "${model.items[index]['title']}",
                            fontSize: getProportionatefontSize(16),
                            fontWeight: FontWeight.w500,
                            color: model.selectedIndex == index
                                ? Colors.white
                                : AppColors.textColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
