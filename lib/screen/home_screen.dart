// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/model/model_movie.dart';
import 'package:test/widget/box_slider.dart';
import 'package:test/widget/carousel_slider.dart';
import 'package:test/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '블랙 팬서: 와칸다 포에버',
      'keyword': '액션',
      'poster': 'wakanda.jpeg',
      'like': true,
      'description': '국왕이자 ‘블랙 팬서’인 "티찰라"의 죽음 이후 수많은 강대국으로부터 위협을 '
      '받게 된 "와칸다". "라몬다", "슈리" 그리고 "나키아", "오코예", "음바쿠"는 각자 사명감을 갖고 '
          '"와칸다"를 지키기 위해 외로운 싸움을 이어간다. 한편, 비브라늄의 패권을 둘러싼 미스터리한 '
          '음모와 함께 깊은 해저에서 모습을 드러낸 최강의 적 "네이머"와 "탈로칸"의 전사들은 "와칸다"를 '
          '향해 무차별 공격을 퍼붓기 시작하는데…',
      'actor': '레티티아 라이트, 다나이 구리라, 루피아 뇽, 테노치 우헤르타 메히아',
      'director': '라이언 쿠글러'
    }),
    Movie.fromMap({
      'title': '자백',
      'keyword': '범죄/스릴러',
      'poster': 'jabaek.jpeg',
      'like': false,
      'description': '불륜 사실을 폭로하겠다는 협박을 받고 향한 호텔에서 의문의 습격을 당한 '
          '유민호(소지섭). 정신을 차려보니 함께 있던 김세희(나나)는 죽어있고, '
          '범인은 흔적도 없이 사라졌다. 하루아침에 성공한 사업가에서 밀실 살인 사건의 '
          '유일한 용의자로 누명을 쓴 유민호는 무죄를 입증하기 위해 승률 100%의 변호사 '
          '양신애(김윤진)를 찾는다. 눈 내리는 깊은 산속의 별장에서 마주한 두 사람, '
          '양신애는 완벽한 진술을 위해 처음부터 사건을 재구성해야 한다고 말하고, '
          '사건의 조각들이 맞춰지며 유민호가 감추고 있던 또 다른 사건이 모습을 드러내게 되는데… '
          '두 개의 사건, 두 개의 시신 숨겨진 진실이 밝혀진다.',
      'actor': '소지섭, 나나, 김윤진',
      'director': '윤종석'
    }),
    Movie.fromMap({
      'title': '자백',
      'keyword': '범죄/스릴러',
      'poster': 'jabaek.jpeg',
      'like': false,
      'description': '불륜 사실을 폭로하겠다는 협박을 받고 향한 호텔에서 의문의 습격을 당한 '
          '유민호(소지섭). 정신을 차려보니 함께 있던 김세희(나나)는 죽어있고, '
          '범인은 흔적도 없이 사라졌다. 하루아침에 성공한 사업가에서 밀실 살인 사건의 '
          '유일한 용의자로 누명을 쓴 유민호는 무죄를 입증하기 위해 승률 100%의 변호사 '
          '양신애(김윤진)를 찾는다. 눈 내리는 깊은 산속의 별장에서 마주한 두 사람, '
          '양신애는 완벽한 진술을 위해 처음부터 사건을 재구성해야 한다고 말하고, '
          '사건의 조각들이 맞춰지며 유민호가 감추고 있던 또 다른 사건이 모습을 드러내게 되는데… '
          '두 개의 사건, 두 개의 시신 숨겨진 진실이 밝혀진다.',
      'actor': '소지섭, 나나, 김윤진',
      'director': '윤종석'
    }),
    Movie.fromMap({
      'title': '자백',
      'keyword': '범죄/스릴러',
      'poster': 'jabaek.jpeg',
      'like': false,
      'description': '불륜 사실을 폭로하겠다는 협박을 받고 향한 호텔에서 의문의 습격을 당한 '
          '유민호(소지섭). 정신을 차려보니 함께 있던 김세희(나나)는 죽어있고, '
          '범인은 흔적도 없이 사라졌다. 하루아침에 성공한 사업가에서 밀실 살인 사건의 '
          '유일한 용의자로 누명을 쓴 유민호는 무죄를 입증하기 위해 승률 100%의 변호사 '
          '양신애(김윤진)를 찾는다. 눈 내리는 깊은 산속의 별장에서 마주한 두 사람, '
          '양신애는 완벽한 진술을 위해 처음부터 사건을 재구성해야 한다고 말하고, '
          '사건의 조각들이 맞춰지며 유민호가 감추고 있던 또 다른 사건이 모습을 드러내게 되는데… '
          '두 개의 사건, 두 개의 시신 숨겨진 진실이 밝혀진다.',
      'actor': '소지섭, 나나, 김윤진',
      'director': '윤종석'
    }),
    Movie.fromMap({
      'title': '자백',
      'keyword': '범죄/스릴러',
      'poster': 'jabaek.jpeg',
      'like': false,
      'description': '불륜 사실을 폭로하겠다는 협박을 받고 향한 호텔에서 의문의 습격을 당한 '
          '유민호(소지섭). 정신을 차려보니 함께 있던 김세희(나나)는 죽어있고, '
          '범인은 흔적도 없이 사라졌다. 하루아침에 성공한 사업가에서 밀실 살인 사건의 '
          '유일한 용의자로 누명을 쓴 유민호는 무죄를 입증하기 위해 승률 100%의 변호사 '
          '양신애(김윤진)를 찾는다. 눈 내리는 깊은 산속의 별장에서 마주한 두 사람, '
          '양신애는 완벽한 진술을 위해 처음부터 사건을 재구성해야 한다고 말하고, '
          '사건의 조각들이 맞춰지며 유민호가 감추고 있던 또 다른 사건이 모습을 드러내게 되는데… '
          '두 개의 사건, 두 개의 시신 숨겨진 진실이 밝혀진다.',
      'actor': '소지섭, 나나, 김윤진',
      'director': '윤종석'
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(10, 10, 10, 0.35),
      child: ListView(
          children: [
            Stack(
                children: [
                  CarouselImage(movies: movies),
                  TopBar()
                ]
            ),
            CircleSlider(
              movies: movies,
            ),
            BoxSlider(
              movies: movies,
            )
          ]
      ),
    );
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
