import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/home/components/build_search_box.dart';
import 'package:interview_test/views/home/components/product_list.dart';
import 'package:interview_test/widgets/app_text.dart';
import 'package:interview_test/widgets/bottom_nav.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isPortrait = SizeConfig.orientation == Orientation.portrait;
  int _selectedIndex = 0;
  List<Map<String, String>> _items = [
    {'icon': 'assets/icons/plate.svg', 'title': 'Resturant'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Catering'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Resturant'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Resturant'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Catering'},
    {'icon': 'assets/icons/plate.svg', 'title': 'Catering'},
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.person,
                  color: AppColors.textColor,
                  size: getProportionatefontSize(15),
                ),
              ),
            ),
            title: Column(
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
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/notifications.svg'),
                ),
              ),
            ],
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: C,
                children: [
                  //
                  SizedBox(
                    height: getProportionatefontSize(24),
                  ),
                  Center(child: SearchField()),
                  SizedBox(
                    height: getProportionatefontSize(24),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        _items.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            margin: EdgeInsetsDirectional.all(10),
                            height: getProportionatefontSize(41),
                            width: getProportionatefontSize(119),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: _selectedIndex == index
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
                                SvgPicture.asset("${_items[index]['icon']}"),
                                SizedBox(
                                  width: getProportionatefontSize(7),
                                ),
                                AppText(
                                  content: "${_items[index]['title']}",
                                  fontSize: getProportionatefontSize(16),
                                  fontWeight: FontWeight.w500,
                                  color: _selectedIndex == index
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
                  SizedBox(
                    height: getProportionatefontSize(15),
                  ),
                  Container(
                      height: getProportionatefontSize(132),
                      width: isPortrait
                          ? getProportionatefontSize(335)
                          : SizeConfig.screenWidth!,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
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
                              content:
                                  'Use code code URSXVN on orders \nabove ₦5000',
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
                  SizedBox(
                    height: getProportionatefontSize(15),
                  ),
                  ProductList(
                    isPortrait: isPortrait,
                    label: "Try it now",
                  ),
                  SizedBox(
                    height: getProportionatefontSize(10),
                  ),
                  ProductList(
                    isPortrait: isPortrait,
                    label: "Try Something New",
                  ),
                  SizedBox(
                    height: getProportionatefontSize(10),
                  ),
                  ProductList(
                    isPortrait: isPortrait,
                    label: "Closest to you",
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: KButtomNav()),
    );
  }
}
