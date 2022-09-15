import 'package:flutter/material.dart';
import 'package:movie_streaming_app/shared/theme.dart';
import 'package:movie_streaming_app/ui/widgets/star_icon.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final Color shadow;
  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(
        left: 24,
        top: 28,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 19),
            height: 207,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
              boxShadow: [
                BoxShadow(
                  color: shadow,
                  offset: const Offset(0, 35),
                  blurRadius: 30,
                  spreadRadius: -10,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: blackWeight,
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      genre,
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              const StarIcon(),
              const StarIcon(),
              const StarIcon(),
              const StarIcon(),
              const StarIcon(),
            ],
          )
        ],
      ),
    );
  }
}
