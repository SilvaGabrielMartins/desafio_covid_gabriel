import 'package:desafio_covid_gabriel/app/pages/page.continente.dart';
import 'package:desafio_covid_gabriel/app/pages/page.pais.dart';
import 'package:flutter/material.dart';
import 'pages/page.home.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => PageHome(),
        '/pagecontinente': (context) => PageContinente(),
        '/pagepais': (context) => PagePais(),
      },
    );
  }
}
