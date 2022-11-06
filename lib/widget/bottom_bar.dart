// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 70,
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, size: 20),
              child: Text(
                '홈',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(Icons.search, size: 20),
              child: Text(
                '검색',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(Icons.save_alt, size: 20),
              child: Text(
                '저장한 컨텐츠',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(Icons.list, size: 20),
              child: Text(
                '더보기',
                style: TextStyle(fontSize: 11),
              ),
            )
          ],
        ),
      ),
    );
  }
}
