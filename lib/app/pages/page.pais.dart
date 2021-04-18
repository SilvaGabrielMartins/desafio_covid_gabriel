import 'package:flutter/material.dart';

class PagePais extends StatefulWidget {
  PagePais({Key key}) : super(key: key);

  @override
  _PagePaisState createState() => _PagePaisState();
}

class _PagePaisState extends State<PagePais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('País'), centerTitle: true),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            color: Color(0xFFFFFFFF),
            width: 345,
            height: 246,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('País'),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Total de casos'),
                  Text('35000'),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Ativos'),
                        Text('Curados'),
                        Text('Óbitos'),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('27%',
                          style: TextStyle(
                              fontFamily: 'Ubuntu-Bold',
                              fontSize: 22,
                              color: Color(0xff4461C2))),
                      Text('27%',
                          style: TextStyle(
                            fontFamily: 'Ubuntu-Bold',
                            fontSize: 22,
                            color: Color(0xff5FD92B),
                          )),
                      Text(
                        '27%',
                        style: TextStyle(
                          fontFamily: 'Ubuntu-Bold',
                          fontSize: 22,
                          color: Color(0xffFF2665),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ]));
  }
}
