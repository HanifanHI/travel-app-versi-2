import 'package:flutter/material.dart';
import '/shared/theme.dart';

class PopularItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;

  PopularItem({
    required this.imageUrl,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          // * IMAGE
          Container(
            width: 55,
            height: 53,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          // * TITLE
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/ic_location.png',
                      width: 16,
                      height: 16,
                    ),
                    Expanded(
                      child: Text(
                        location,
                        style: greyLightTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
