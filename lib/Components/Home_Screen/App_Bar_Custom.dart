import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/constants.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height / 4,
        ),
        Container(
          height: size.height / 5,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(29),
              bottomRight: Radius.circular(29),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi Anh Phon!',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundImage: NetworkImage(
                            'https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.6435-9/178365630_907943059778049_5694045723792127237_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=mCpk3-YMEyUAX9F_6eo&_nc_oc=AQlT4H6-LwsEhbZEDxhPJlgHHz5tJ9BFPNh_3xp7zy7bTkvwIKfVrtNSns-zjA2inS0&_nc_ht=scontent.fsgn4-1.fna&oh=7429e8a1f63ab08dde21838e11f5de54&oe=61647A7D'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: kPrimaryColor.withAlpha(50),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: kPrimaryColor,
                        size: 30,
                      )),
                  border: InputBorder.none,
                  hintText: 'Search ',
                  hintStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
