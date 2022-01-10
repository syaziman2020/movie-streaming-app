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
              shadow: Color.fromRGBO(22, 158, 159, 0.3),
            ),
            DisneyTile(
              imageUrl: 'assets/movie6.png',
              title: 'The Dark Knight',
              genre: 'Heroes',
              shadow: Color.fromRGBO(22, 158, 159, 0.3),
            ),
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

    Widget buttonSuggest() {
      return Container(
        margin: EdgeInsets.only(
          top: 60,
          left: 78,
          right: 78,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(37),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(94, 56, 229, 0.2),
              offset: Offset(0, 35),
              blurRadius: 30,
              spreadRadius: -10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(37),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Suggest Movie',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          searchEngine(),
          searchItem(),
          buttonSuggest(),
        ],
      ),
    );
  }
}
