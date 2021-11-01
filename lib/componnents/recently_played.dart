import 'package:flutter/material.dart';

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({Key? key}) : super(key: key);

  @override
  _RecentlyPlayedState createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.4,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              // height: height * 0.3,
              margin: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: width * 0.45,
                    height: height * 0.25,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoZ8hs5p_7r59PMjPWWYDcB-Paxe-IKo7erQ&usqp=CAU',
                        ),
                      ),
                      // child:
                    ),
                  ),
                  const Text(
                    'Wicked Lips',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    'Super Jackets',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
