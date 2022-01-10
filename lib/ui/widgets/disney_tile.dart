import 'package:flutter/material.dart';
import 'package:movie_streaming_app/shared/theme.dart';
import 'package:movie_streaming_app/ui/widgets/star_icon.dart';

class DisneyTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final Color shadow;
  final Color starIcon;
  final Color starIconLast;
  const DisneyTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.genre,
    this.shadow = Colors.transparent,
    this.starIcon = const Color(0xffFFAB2E),
    this.starIconLast = const Color(0xffFFAB2E),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      margin: EdgeInsets.only(top: 17, bottom: 13),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
              boxShadow: [
                BoxShadow(
                  color: shadow,
                  offset: Offset(0, 30),
                  blurRadius: 30,
                  spreadRadius: -20,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: blackWeight,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                genre,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  StarIcon(),
                  StarIcon(),
                  StarIcon(),
                  StarIcon(
                    colorIcon: starIcon,
                  ),
                  StarIcon(
                    colorIcon: starIconLast,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
