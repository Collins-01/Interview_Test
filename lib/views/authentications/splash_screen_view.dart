import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/authentications/unauthenticated_view.dart';
import 'package:interview_test/widgets/app_text.dart';

class SpalshScreenView extends StatefulWidget {
  const SpalshScreenView({Key? key}) : super(key: key);

  @override
  _SpalshScreenViewState createState() => _SpalshScreenViewState();
}

class _SpalshScreenViewState extends State<SpalshScreenView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      // SignUpView
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => UnAuthenticatedView()));
    });
    super.initState();
  }

  Color iconColor = Colors.white.withOpacity(0.38);
  bool isPotrait = SizeConfig.orientation == Orientation.portrait;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // stops: [0.4,0.4],
            colors: [
              Color(0xffFFBF85),
              Color(0xffE44C3A),
            ],
          )),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Container(
                  
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                      children: [
                        SvgPicture.asset('assets/icons/cup.svg',
                            color: iconColor),
                        SvgPicture.asset(
                          'assets/icons/cup.svg',
                          color: iconColor,
                        ),
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/icons/app_logo.png'),
                  ),
                  Container(
   
                    child: Row(
                     
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/cup.svg',
                          color: iconColor,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: getProportionatefontSize(25),
                            ),
                            SvgPicture.asset(
                              'assets/icons/basket.svg',
                              color: iconColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: getProportionatefontSize(60),
                child: Center(
                    child: Column(
                  children: [
                    AppText(
                      color: Colors.white,
                      fontSize: getProportionatefontSize(12),
                      fontWeight: FontWeight.w400,
                      content:
                          "Nam eget molestie tincidunt massa morbi dolor quam  ",
                    ),
                    AppText(
                      color: Colors.white,
                      fontSize: getProportionatefontSize(12),
                      fontWeight: FontWeight.w400,
                      content:
                          "tortor mi. Proin urna vitae facilisis tincidunt.",
                    ),
                  ],
                )),
              )
            ],
          )),
    );
  }
}
