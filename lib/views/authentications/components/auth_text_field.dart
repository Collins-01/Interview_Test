import 'package:flutter/material.dart';
import 'package:interview_test/utils/size_config.dart';

class AuthTextField extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  // final Function(String?)? onSaved;
  // final Function(String?) validator;

  const AuthTextField({
    Key? key,
    this.title,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      height: getProportionatefontSize(56),
      // width: SizeConfig.orientation==Orientation.portrait? getProportionatefontSize(343):SizeConfig.screenWidth!,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffC5CEE0),
          width: 1
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: controller,
        // validator: validator,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          border: InputBorder.none,
          hintText: title,
          
          labelStyle: TextStyle(
            fontSize: getProportionatefontSize(17),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: Color(0xff2C2929),
          ),
          hintStyle: TextStyle(
            fontSize: getProportionatefontSize(17),
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: Color(0xff9E9E9E),
          ),
        ),
      ),
    );
  }
}
