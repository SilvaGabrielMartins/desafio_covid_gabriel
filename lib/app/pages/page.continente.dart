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
    var pseudoLista = ["China", "PaisAsia", "OutraAsia"];
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
                width: 100,
                height: 100,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        color: Color(0xFFFFFFFF),
                        width: 345,
                        height: 246,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Total'),
                              SizedBox(
                                height: 30,
                              ),
                              Text('Total de casos'),
                              Text('35000'),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Ativos'),
                                    Text('Curados'),
                                    Text('Óbitos'),
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                            ])),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        color: Color(0xFFFFFFFF),
                        width: 345,
                        height: 156,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Hoje'),
                              SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 30,
                              ),
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
                                  Text('+ 15000',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu-Bold',
                                          fontSize: 22,
                                          color: Color(0xff4461C2))),
                                  Text('+ 1160',
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu-Bold',
                                        fontSize: 22,
                                        color: Color(0xff5FD92B),
                                      )),
                                ],
                              )
                            ])),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        color: Color(0xFFFFFFFF),
                        width: 345,
                        height: 159,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Testes'),
                              SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 30,
                              ),
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
                                  Text('15000',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu-Bold',
                                          fontSize: 22,
                                          color: Color(0xff4461C2))),
                                  Text('116000000',
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu-Bold',
                                        fontSize: 22,
                                        color: Color(0xff5FD92B),
                                      )),
                                ],
                              )
                            ])),
                  ],
                ),
              ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Text('Ativos'),
              //               Text('Curados'),
              //               Text('Óbitos'),
              //             ],
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Text('27%'),
              //               Text('29%'),
              //               Text('30%'),
              //             ],
              //           ),
              //           Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text('Hoje'),
              //                 Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       Text('Casos'),
              //                       Text('Óbitos'),
              //                     ]),
              //                 Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       Text('+ 15000'),
              //                       Text('+ 170'),
              //                     ])
              //               ]),
              //           Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Text('Teste'),
              //                 Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       Text('Realizados'),
              //                       Text('Populacao'),
              //                     ]),
              //                 Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       Text('15000'),
              //                       Text('170'),
              //                     ])
              //               ])
              //         ],
              //       )),
              // ),
              Container(
                  child: ListView.builder(
                      itemCount: pseudoLista.length,
                      itemBuilder: (_, index) {
                        return Card(
                          child: ListTile(
                              title: Text(pseudoLista[index]),
                              onTap: () {
                                Navigator.pushNamed(context, '/pagepais');
                              }),
                        );
                      })),
            ],
          )),
    );
  }
}
