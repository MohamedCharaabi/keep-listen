import 'package:flutter/material.dart';

class FavoriteArtists extends StatefulWidget {
  const FavoriteArtists({Key? key}) : super(key: key);

  @override
  _FavoriteArtistsState createState() => _FavoriteArtistsState();
}

class _FavoriteArtistsState extends State<FavoriteArtists> {
  final String adam =
      'https://resize1.prod.docfr.doc-media.fr/rcrop/1200,902,center-middle/img/var/doctissimo/storage/images/fr/www/beaute/news/adam-levine-elu-l-homme-le-plus-sexy-au-monde/1121397-1-fre-FR/adam-levine-elu-l-homme-le-plus-sexy-au-monde.jpg';

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.35,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 8.0),
              // height: height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: width * 0.3,
                    height: height * 0.3,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://resize1.prod.docfr.doc-media.fr/rcrop/1200,902,center-middle/img/var/doctissimo/storage/images/fr/www/beaute/news/adam-levine-elu-l-homme-le-plus-sexy-au-monde/1121397-1-fre-FR/adam-levine-elu-l-homme-le-plus-sexy-au-monde.jpg',
                          )),
                    ),
                  ),
                  const Text(
                    'Maroon 5',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
