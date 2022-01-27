import 'package:flutter/material.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/widgets/popular_item.dart';
import 'package:travel_app/widgets/recommended_item.dart';

class HomePage extends StatelessWidget {
  // * HEADER
  Widget header() {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/ic_category.png',
          ),
          Image.asset(
            'assets/img_profile.png',
          ),
        ],
      ),
    );
  }

  // * TITLE
  Widget title() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Jessica',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Let’s discover best package for you.',
            style: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
              letterSpacing: 0.5,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  // * SEARCH
  Widget search() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: cWhiteLight,
              ),
              child: TextField(
                autocorrect: true,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  icon: Image.asset(
                    'assets/ic_search.png',
                    width: 24,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  hintText: 'Search your favorite place here.',
                  hintStyle: greyLightTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/ic_menu.png',
            width: 45,
            height: 45,
          ),
        ],
      ),
    );
  }

  // * TITLE RECOMMENDED
  Widget titleRecommended() {
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
            'Recommended',
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

  // * CONTENT RECOMMENDED
  Widget contentRecommended(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailPage();
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 245,
        margin: EdgeInsets.only(
          left: 30,
          bottom: 25,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommendedItem(
                imageUrl: 'assets/img_1.png',
                name: 'Wilson Island Tour',
                location: 'Maldives, Asia',
                rating: 4.9,
              ),
              RecommendedItem(
                imageUrl: 'assets/img_2.png',
                name: 'St. Lucia island',
                location: 'Saint Lucia',
                rating: 4.5,
              ),
              RecommendedItem(
                imageUrl: 'assets/img_3.png',
                name: 'St. Lucia island',
                location: 'Saint Lucia',
                rating: 4.5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // * TITLE POPULAR
  Widget titlePopular() {
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
            'Popular Package',
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

  // * CONTENT POPULAR
  Widget contentPopular() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: Column(
        children: [
          PopularItem(
            imageUrl: 'assets/img_popular_1.png',
            name: 'Alesund viewpoint package',
            location: 'Norway',
          ),
          PopularItem(
            imageUrl: 'assets/img_popular_2.png',
            name: 'Manarola package',
            location: 'La Spezia, Italy',
          ),
          PopularItem(
            imageUrl: 'assets/img_popular_3.png',
            name: 'Heceta head viewpoint package',
            location: 'Florence, USA ',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              title(),
              search(),
              titleRecommended(),
              contentRecommended(context),
              titlePopular(),
              contentPopular(),
            ],
          ),
        ),
      ),
    );
  }
}
