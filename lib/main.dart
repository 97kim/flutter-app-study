// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:test/screen/home_screen.dart';
import 'package:test/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme =
        ThemeData(brightness: Brightness.dark, primaryColor: Colors.black);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.white)),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(child: Text('search')),
              ),
              Container(
                child: Center(child: Text('save')),
              ),
              Container(
                child: Center(child: Text('more')),
              )
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
