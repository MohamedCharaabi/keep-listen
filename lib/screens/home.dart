import 'package:flutter/material.dart';
import 'package:keep_listen/componnents/favorite_artists.dart';
import 'package:keep_listen/componnents/recently_played.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Color(0xff444244),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Keep Listen',
                        style: TextStyle(color: Colors.white70),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Color(0xff444244),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Recently Played',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const RecentlyPlayed(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Your Favorite Artists',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const FavoriteArtists(),
                  // menu size
                  SizedBox(height: height * 0.1 + 10)
                ],
              ),
            ),
          ),
          Positioned(
            width: width,
            bottom: 10,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              height: height * 0.1,
              width: width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.dashboard_outlined),
                  Icon(Icons.search_rounded),
                  Icon(Icons.library_music_outlined),
                  Icon(Icons.person_outline),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
