import 'package:flutter/material.dart';
import 'package:plantapp/Screens/Detail_Screen.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/models/product.dart';

class ProductListCard extends StatelessWidget {
  const ProductListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listProducts.length,
              itemBuilder: (context, index) {
                // ignore: unused_local_variable
                Product product = listProducts[index];
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 500),
                              reverseTransitionDuration:
                                  const Duration(milliseconds: 500),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      FadeTransition(
                                opacity: animation,
                                child: DetailsCsreen(product: product),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width / 2.5,
                          height: 230,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  color: kPrimaryColor.withAlpha(50),
                                )
                              ]),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Hero(
                                  tag: product.image!,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(product.image!),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    width: size.width / 2.5,
                                    height: 160,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.name!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '\$${product.price}',
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        product.country!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: kPrimaryColor,
                                          fontSize: 10,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
