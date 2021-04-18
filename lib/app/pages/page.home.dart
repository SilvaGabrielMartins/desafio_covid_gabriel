import 'package:desafio_covid_gabriel/app/shared/models/Continente.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  /*Future<Continentes> getHttp() async {
    try {
      Response response = await Dio()
          .get("https://disease.sh/v3/covid-19/continents?yesterday=true");
      var modeloContinente = Continentes.fromJson(response.data);
      print(response);
      //return modeloContinente;
    } catch (e) {
      print(e);
    }*/
  // await Future.delayed(Duration(seconds: 5));

  @override
  Widget build(BuildContext context) {
    //getHttp();
    return Scaffold(
      appBar: AppBar(
        /*leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/Mask Group 215.png'),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),*/
        title: Text('Covid-19'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
        itemCount: 6,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
                title: Text('Nome.. $index'),
                subtitle: Text('Descricao Qualquer...'),
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: Image.asset('assets/images/continente$index.png',
                        width: 44, height: 44),
                    onPressed: () {},
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                }), //Image.asset(
                //'Bootcamp-Squadra/Bootcamp-ProgramaNewThinkers2021/Trilha_Flutter/Desafio/desafio_covid_gabriel/assets/images/continentes/asia.png'),
                trailing: Icon(Icons.arrow_forward_ios),
                isThreeLine: true,
                dense: false,
                onTap: () {
                  Navigator.pushNamed(context, '/pagecontinente');
                }),
          );
        },
      )

          // ListView.builder(
          //   itemCount: 6,
          //   itemBuilder: (_, index) {
          //     return Card(
          //       child: ListTile(
          //           title: Text('Nome.. $index'),
          //           subtitle: Text('Descricao Qualquer...'),
          //           leading: Icon(Icons.account_circle, size: 44),
          //           trailing: Icon(Icons.arrow_forward_ios),
          //           isThreeLine: true,
          //           dense: false,
          //           onTap: () {}),
          //     );
          //   },
          // )
          ),
    );
  }
}
