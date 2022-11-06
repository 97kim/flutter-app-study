// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/model/model_movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '자백',
      'keyword': '범죄',
      'poster': 'jabaek.jpeg',
      'like': false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('images/netflix-logo-sm.png',
                fit: BoxFit.contain, height: 50),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('TV 프로그램',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('영화',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('내가 찜한 콘텐츠',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            )
          ]),
    );
  }
}
