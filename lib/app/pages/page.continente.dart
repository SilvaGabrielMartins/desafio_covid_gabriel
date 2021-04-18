import 'package:desafio_covid_gabriel/app/shared/models/Continente.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PageContinente extends StatefulWidget {
  PageContinente({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageContinenteState createState() => _PageContinenteState();
}

class _PageContinenteState extends State<PageContinente> {
  @override
  Widget build(BuildContext context) {
    //getHttp();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              title: Text('Asia'),
              centerTitle: true,
              bottom: TabBar(tabs: [
                Tab(
                  text: 'Detalhes',
                ),
                Tab(
                  text: 'Países',
                ),
              ])),
          body: TabBarView(
            children: [
              SizedBox(
                width: 435,
                height: 246,
                child: Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text('Total'),
                        Text('Total de casos'),
                        Text('35000'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Ativos'),
                            Text('Curados'),
                            Text('Óbitos'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('27%'),
                            Text('29%'),
                            Text('30%'),
                          ],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Hoje'),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Casos'),
                                    Text('Óbitos'),
                                  ]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('+ 15000'),
                                    Text('+ 170'),
                                  ])
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Teste'),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Realizados'),
                                    Text('Populacao'),
                                  ]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('15000'),
                                    Text('170'),
                                  ])
                            ])
                      ],
                    )),
              ),
              Container(),
            ],
          )),
    );
  }
}
