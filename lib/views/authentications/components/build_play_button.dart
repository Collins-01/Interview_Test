import 'package:flutter/material.dart';
import 'package:interview_test/utils/size_config.dart';

class BuildPlayButton extends StatelessWidget {
  const BuildPlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: getProportionatefontSize(72),
        width: getProportionatefontSize(72),
        child: Icon(
          Icons.play_arrow,
          size: getProportionatefontSize(24),
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffE54D3A),
        ),
      ),
    );
  }
}
