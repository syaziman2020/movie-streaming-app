import 'package:flutter/material.dart';
import 'package:movie_streaming_app/shared/theme.dart';
import 'package:movie_streaming_app/ui/widgets/custom_card.dart';
import 'package:movie_streaming_app/ui/widgets/disney_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchEngine() {
      return Container(
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: whiteColor,
              size: 25,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
        ),
        margin: const EdgeInsets.only(
          top: 38,
          bottom: 35,
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
          color: indigoColor,
          borderRadius: BorderRadius.circular(100),
        ),
      );
    }

    Widget searchItem() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search Result (3)',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: blackWeight,
              ),
            ),
            DisneyTile(
              imageUrl: 'assets/movie5.png',
              title: 'The Dark II',
              genre: 'Horror',
              starIconLast: Color(0xff363748),
            ),
            DisneyTile(
                imageUrl: 'assets/movie6.png',
                title: 'The Dark Knight',
                genre: 'Heroes'),
            DisneyTile(
              imageUrl: 'assets/movie7.png',
              title: 'The Dark Tower',
              genre: 'Action',
              starIconLast: Color(0xff363748),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          searchEngine(),
          searchItem(),
        ],
      ),
    );
  }
}
