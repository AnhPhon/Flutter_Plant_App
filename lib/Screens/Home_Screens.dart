import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plantapp/Components/Home_Screen/App_Bar_Custom.dart';
import 'package:plantapp/Components/Home_Screen/Featured_Card.dart';
import 'package:plantapp/Components/Home_Screen/Product_List_Card.dart';
import 'package:plantapp/Components/Home_Screen/Title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarCustom(),
            TitleList(
              press: () {},
              title: 'Recomended',
            ),
            ProductListCard(),
            TitleList(
              press: () {},
              title: 'Featured Plants',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeaturedCard(),
                  FeaturedCard(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
