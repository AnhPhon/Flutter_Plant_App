import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 250,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              color: kPrimaryColor.withAlpha(50),
              blurRadius: 5,
            )
          ],
          image: DecorationImage(
              image: AssetImage('assets/images/bottom_img_1.png'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
