import 'package:flutter/material.dart';

class ActivitiesItem extends StatelessWidget {
  final String imageUrl;

  ActivitiesItem(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 80,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
