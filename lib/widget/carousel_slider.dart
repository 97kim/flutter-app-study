// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test/widget/detail_screen.dart';
import '../model/model_movie.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  const CarouselImage({super.key, required this.movies});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./images/${m.poster}')).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
        ),
        CarouselSlider(items: images, options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
                _currentKeyword = keywords[_currentPage];
              });
            })
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
          height: 35,
          child: Text(
              _currentKeyword,
              style: const TextStyle(fontSize: 15)
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: deviceSize.width * 0.3,
              child: Column(
                  children: [
                    likes[_currentPage]
                        ? IconButton(icon: const Icon(Icons.check), onPressed: () {})
                        : IconButton(icon: const Icon(Icons.add), onPressed: () {}),
                    const Text('?????? ?????? ?????????', style: TextStyle(fontSize: 15))
                  ]
              ),
            ),
            SizedBox(
                width: deviceSize.width * 0.22,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.play_arrow, color: Colors.black),
                        Padding(padding: EdgeInsets.all(3)),
                        Text(
                            '??????',
                            style: TextStyle(color: Colors.black)
                        )
                      ],
                    )
                )
            ),
            SizedBox(
              width: deviceSize.width * 0.3,
              child: Column(
                children: [
                  IconButton(
                      icon: const Icon(Icons.info),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (BuildContext context) {
                                  return DetailScreen(movie: movies[_currentPage]);
                                }));
                      }
                  ),
                  const Text(
                    '??????',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: makeIndicator(likes, _currentPage)
        )
      ]);
  }
}

List<Widget> makeIndicator(List list, int _currentPage) {
  List<Widget> results = [];
  for(var i = 0; i < list.length; i++) {
    results.add(
        Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 2.0
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == i
                  ? const Color.fromRGBO(255, 255, 255, 0.9)
                  : const Color.fromRGBO(255, 255, 255, 0.4)),
        )
    );
  }
  return results;
}