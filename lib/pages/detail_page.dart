import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/widgets/activities_item.dart';
import 'package:travel_app/widgets/menu_item.dart';

class DetailPage extends StatelessWidget {
  // * IMAGE
  Widget image() {
    return Container(
      width: double.infinity,
      height: 390,
      margin: EdgeInsets.only(bottom: 80),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/img_3.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // * HEADER
  Widget header(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 40,
        bottom: 260,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/ic_back.png',
              width: 40,
              height: 40,
            ),
          ),
          Image.asset(
            'assets/ic_favorite.png',
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }

  // * CARD
  Widget card() {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            color: cBlack.withOpacity(0.1),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      // * CONTENT CARD
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Wilson Island Tour',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$499.00',
                  style: oRangeTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/ic_location.png',
                width: 17,
                height: 17,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Maldives, Asia',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ],
      ),
    );
  }

  // * HEADER & CARD
  Widget headerCard(BuildContext context) {
    return Column(
      children: [
        header(context),
        card(),
      ],
    );
  }

  // * MENU ITEM
  Widget menuItem() {
    return Container(
      width: double.infinity,
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuItem(
              name: 'Details',
              isActive: true,
            ),
            MenuItem(
              name: 'Reviews',
            ),
            MenuItem(
              name: 'Budget ',
            ),
            MenuItem(
              name: 'Highlight',
            ),
          ],
        ),
      ),
    );
  }

  // * DESCRIPTION
  Widget description() {
    return Padding(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 14,
        bottom: 25,
      ),
      child: Text(
        'Wilson island appeals through its sheer natural beauty of loom volcanoes and lush terraced rice fields that exude peace and  serenity. Wilson enchancts with its dramatic and colourful of a ceremonies',
        style: greyLightTextStyle.copyWith(
          letterSpacing: 0.1,
        ),
      ),
    );
  }

  // * TITLE ACTIVITIES
  Widget titleActivities() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Activities',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'View all ',
            style: oRangeTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  // * CONTENT ACTIVITIES
  Widget contentActivities() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        bottom: 100,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ActivitiesItem('assets/img_activies_1.png'),
            ActivitiesItem('assets/img_activies_2.png'),
            ActivitiesItem('assets/img_activies_3.png'),
          ],
        ),
      ),
    );
  }

  // * BOTTOM
  Widget bookNow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(color: cWhite, boxShadow: [
        BoxShadow(
          color: cBlack.withOpacity(0.1),
          offset: Offset(0, -1),
          blurRadius: 10,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // * PRICE
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total price',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$499.00',
                style: oRangeTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          // * BUTTON BOOK NOW
          Container(
            width: 155,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: cOrange,
            ),
            child: Center(
              child: Text(
                'BOOK NOW',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                image(),
                headerCard(context),
              ],
            ),
            menuItem(),
            description(),
            titleActivities(),
            contentActivities(),
          ],
        ),
      ),
      floatingActionButton: bookNow(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
