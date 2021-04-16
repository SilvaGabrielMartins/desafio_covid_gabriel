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
  Future<Continentes> getHttp() async {
    try {
      Response response = await Dio()
          .get("https://disease.sh/v3/covid-19/continents?yesterday=true");
      var modeloContinente = Continentes.fromJson(response.data);
      print(modeloContinente);
      //return modeloContinente;
    } catch (e) {
      print(e);
    }
    // await Future.delayed(Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    //getHttp();
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/Mask Group 215.png'),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('Covid-19'),
        centerTitle: true,
      ),
      body: Column(children: [
        FutureBuilder<Continentes>(
            future: getHttp(),
            builder: (_, snapshot) {
              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: 6,
                      itemBuilder: (_, index) {
                        return Card(
                          child: ListTile(
                              title: Text('Nome.. $index'),
                              subtitle: Text('Descricao Qualquer...'),
                              leading: Icon(Icons.account_circle, size: 44),
                              trailing: Icon(Icons.arrow_forward_ios),
                              isThreeLine: true,
                              dense: false,
                              onTap: () {}),
                        );
                      },
                    )
                  : Text('Erou');
            }),
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
      ]),
    );
  }
}
