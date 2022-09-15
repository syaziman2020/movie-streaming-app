import 'package:flutter/material.dart';
import 'package:movie_streaming_app/shared/theme.dart';
import 'package:movie_streaming_app/ui/pages/search_page.dart';
import 'package:movie_streaming_app/ui/widgets/custom_card.dart';
import 'package:movie_streaming_app/ui/widgets/disney_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 29,
          left: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moviez',
                    style: blackTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: blackWeight,
                    ),
                  ),
                  Text(
                    'Watch much easier',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Container(
                width: 55,
                height: 45,
                padding: const EdgeInsets.only(left: 22),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      100,
                    ),
                    bottomLeft: Radius.circular(
                      100,
                    ),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.search,
                    color: blackColor,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget itemCard() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CustomCard(
              imageUrl: 'assets/movie1.png',
              title: 'John Wick 4',
              shadow: Color.fromRGBO(94, 56, 229, 0.2),
              genre: 'Action, Crime',
            ),
            CustomCard(
              imageUrl: 'assets/movie2.png',
              title: 'Bohemian',
              shadow: Color.fromRGBO(254, 123, 2, 0.2),
              genre: 'Documentary',
            ),
          ],
        ),
      );
    }

    Widget disneyItem() {
      return Container(
        margin: const EdgeInsets.only(
          top: 28,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: blackTextStyle.copyWith(
                  fontSize: 24, fontWeight: blackWeight),
            ),
            const DisneyTile(
              imageUrl: 'assets/movie4.png',
              title: 'Mulan Session',
              genre: 'History, War',
              shadow: Color.fromRGBO(22, 158, 159, 0.3),
              starIcon: Color(0xffE1E1EA),
              starIconLast: Color(0xffE1E1EA),
            ),
            const DisneyTile(
              imageUrl: 'assets/movie3.png',
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          header(),
          itemCard(),
          disneyItem(),
        ],
      ),
    );
  }
}
