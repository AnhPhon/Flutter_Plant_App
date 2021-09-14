import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';

class IconDetail extends StatelessWidget {
  const IconDetail({
    Key? key,
    required this.image,
    required this.height,
  }) : super(key: key);

  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 4,
                color: kPrimaryColor.withAlpha(60)),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: height,
          ),
        ],
      ),
    );
  }
}
