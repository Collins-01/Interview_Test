import 'package:flutter/material.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/authentications/components/build_play_button.dart';
import 'package:interview_test/views/authentications/sign_up_view.dart';
import 'package:interview_test/views/authentications/view_models/unauthenticated_viewmodel.dart';
import 'package:interview_test/widgets/app_button.dart';
import 'package:interview_test/widgets/app_text.dart';
import 'package:interview_test/widgets/dark_button.dart';
import 'package:stacked/stacked.dart';

// ignore: must_be_immutable
class UnAuthenticatedView extends StatelessWidget {
  bool isPotrait=SizeConfig.orientation==Orientation.portrait;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<UnAuthenticatedViewModel>.reactive(
      viewModelBuilder: ()=>UnAuthenticatedViewModel(),
      builder: (context, model,child) {
        return Scaffold(
            body: Container(
          alignment: Alignment.bottomCenter,
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          )),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isPotrait?Container():SizedBox(height: getProportionatefontSize(60),),
                Center(child: BuildPlayButton()),
                SizedBox(
                  height: getProportionatefontSize(50),
                ),
                Column(
                  children: [
                    AppText(
                      content: "Yori is here to serve you",
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionatefontSize(24),
                      color: Colors.white,
                    ),
                    AppText(
                      content: "anytime anyday",
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionatefontSize(24),
                      color: Colors.white,
                    ),
                  ],
                ), //
                SizedBox(
                  height: getProportionatefontSize(18),
                ),
                Column(
                  children: [
                    AppText(
                      content: "Qualified Cateres ready to qualify for",
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionatefontSize(14),
                      color: Colors.white,
                    ),
                    AppText(
                      content: "parties anytime anyday",
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionatefontSize(14),
                      color: Colors.white,
                    ),
                  ],
                ), //
                SizedBox(
                  height: getProportionatefontSize(15),
                ),
                AppButton(
                  onTap: () {
                   model.naviagetSIgnUpView();
                  },
                  title: "Sign up",
                ), 
                SizedBox(
                  height: getProportionatefontSize(10),
                ),
                DarkButton(
                  title: "Login",
                  onTap: () {},
                ),
                SizedBox(
                  height: getProportionateAdjustedfontSize(100),
                )
              ],
            ),
          ),
        ));
      }
    );
  }
}
