import 'dart:convert';
import 'package:desafio_covid_gabriel/app/shared/models/pais.dart';
import 'package:desafio_covid_gabriel/app/shared/repository/api.dart';
import 'package:flutter/material.dart';

class PagePais extends StatefulWidget {
  PagePais({Key key}) : super(key: key);

  @override
  _PagePaisState createState() => _PagePaisState();
}

class _PagePaisState extends State<PagePais> {
  var informacaoPais;
  _getPais(String pais) {
    API.getPais(pais).then((response) {
      Map informacaoPaisMap = jsonDecode(response.body);
      informacaoPais = new Pais.fromJson(informacaoPaisMap);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments;
    final informacoesContinente = arguments;
    _getPais(informacoesContinente);
    return Scaffold(
        appBar: AppBar(title: Text(informacoesContinente), centerTitle: true),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            color: Color(0xFFFFFFFF),
            width: 345,
            height: 246,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (Image.network(informacaoPais.countryInfo.flag,
                      width: 75, height: 75)),
                  Text(informacoesContinente),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Total de casos'),
                  Text(informacaoPais.cases.toString()),
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
                      Text(
                          (informacaoPais.active / informacaoPais.cases * 100)
                                  .toStringAsPrecision(2) +
                              '%',
                          style: TextStyle(
                              fontFamily: 'Ubuntu-Bold',
                              fontSize: 22,
                              color: Color(0xff4461C2))),
                      Text(
                          (informacaoPais.recovered /
                                      informacaoPais.cases *
                                      100)
                                  .toStringAsPrecision(2) +
                              '%',
                          style: TextStyle(
                            fontFamily: 'Ubuntu-Bold',
                            fontSize: 22,
                            color: Color(0xff5FD92B),
                          )),
                      Text(
                        (informacaoPais.deaths / informacaoPais.cases * 100)
                                .toStringAsPrecision(2) +
                            '%',
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
