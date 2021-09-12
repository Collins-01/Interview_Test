import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/home/components/advert_box.dart';
import 'package:interview_test/views/home/components/build_search_box.dart';
import 'package:interview_test/views/home/components/home_banner.dart';
import 'package:interview_test/views/home/components/product_list.dart';
import 'package:interview_test/views/home/view_models/home_view_model.dart';
import 'package:interview_test/widgets/app_text.dart';
import 'package:interview_test/widgets/bottom_nav.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);

    SizeConfig().init(context);
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, _) {
          return SafeArea(
            top: false,
            child: Scaffold(
                backgroundColor: AppColors.scaffoldColor,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  leading: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        CupertinoIcons.person,
                        color: AppColors.textColor,
                        size: getProportionatefontSize(16),
                      ),
                    ),
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        content: "Delivering to",
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getProportionatefontSize(12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            content: "170, Apata street, Somolu",
                            fontSize: getProportionatefontSize(16),
                            fontWeight: FontWeight.w700,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: getProportionatefontSize(5),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: getProportionatefontSize(10),
                                color: AppColors.textColor,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  centerTitle: true,
                  elevation: 0.0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/icons/notifications.svg',
                          height: getProportionateAdjustedfontSize(23),
                        ),
                      ),
                    ),
                  ],
                ),
                body: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //
                        HomeBanner(
                          model: model,
                        ),
                        SizedBox(
                          height: getProportionatefontSize(8),
                          child: Container(color: Colors.white,),
                        ),

                        AdvertBox(),
                        SizedBox(
                          height: getProportionatefontSize(8),
                        ),
                        ProductList(
                          label: "Try it now",
                        ),
                        SizedBox(
                          height: getProportionatefontSize(10),
                        ),
                        ProductList(
                          label: "Try Something New",
                        ),
                        SizedBox(
                          height: getProportionatefontSize(10),
                        ),
                        ProductList(
                          label: "Closest to you",
                        ),
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: KButtomNav()),
          );
        });
  }
}
