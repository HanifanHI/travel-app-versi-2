import 'package:flutter/material.dart';
import '/shared/theme.dart';

class MenuItem extends StatelessWidget {
  final String name;
  final bool isActive;

  MenuItem({
    required this.name,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * NAME
        Text(
          name,
          style: isActive
              ? oRangeTextStyle.copyWith(
                  fontWeight: medium,
                )
              : greyTextStyle.copyWith(
                  fontWeight: medium,
                ),
        ),
        // * LINE CUSTOME
        isActive
            ? Row(
                children: [
                  Container(
                    width: 30,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                      ),
                      color: cOrange,
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: cOrange,
                    ),
                  )
                ],
              )
            : Container(),
      ],
    );
  }
}
