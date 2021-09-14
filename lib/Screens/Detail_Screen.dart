import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/Components/Details_Screen/Icon_Detail.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/models/product.dart';

class DetailsCsreen extends StatefulWidget {
  const DetailsCsreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  _DetailsCsreenState createState() => _DetailsCsreenState();
}

class _DetailsCsreenState extends State<DetailsCsreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 510,
                width: double.infinity,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Hero(
                  tag: widget.product.image!,
                  child: Container(
                    height: 500,
                    width: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                        bottomLeft: Radius.circular(29),
                      ),
                      color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage(widget.product.imageDetails!),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: SvgPicture.asset('assets/icons/more.svg',
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 25,
                child: Column(
                  children: [
                    IconDetail(
                      height: 34,
                      image: 'assets/icons/sun.svg',
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    IconDetail(
                      height: 30,
                      image: 'assets/icons/icon_2.svg',
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    IconDetail(
                      height: 28,
                      image: 'assets/icons/icon_3.svg',
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    IconDetail(
                      height: 23,
                      image: 'assets/icons/icon_4.svg',
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.product.name!,
                      style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          fontSize: 30),
                    ),
                    Text(
                      '\$${widget.product.price}',
                      style: GoogleFonts.ubuntu(
                          fontSize: 32,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.product.country!,
                  style: GoogleFonts.ubuntu(
                    fontSize: 25,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(
                      widget.product.description!,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
