import 'package:flutter/material.dart';
import '/shared/theme.dart';

class RecommendedItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final double rating;

  RecommendedItem({
    required this.imageUrl,
    required this.name,
    required this.location,
    this.rating = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
          width: 205,
          height: 245,
          color: cWhite,
          child: Column(
            children: [
              // * IMAGE
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // * DESCRIPTION
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/ic_location.png',
                              width: 15,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              location,
                              style: greyLightTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: medium,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/ic_star.png',
                          width: 15,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '$rating',
                          style: greyLightTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
