import 'dart:convert';
import 'package:desafio_covid_gabriel/app/shared/models/continente.dart';
import 'package:desafio_covid_gabriel/app/shared/repository/api.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  var continentes = [];

  _getContinentes() {
    API.getContinentes().then((response) {
      Iterable lista = json.decode(response.body);
      continentes = lista.map((model) => Continentes.fromJson(model)).toList();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _getContinentes();
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/Mask Group 215.png'),
              onPressed: () {},
            );
          },
        ),
        title: Text(
          'Covid-19',
          style: GoogleFonts.ubuntu(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E2243),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFF3F4F9),
        child: Center(
            child: ListView.builder(
          itemCount: continentes.length,
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                  title: Text(continentes[index].continent,
                      style: GoogleFonts.ubuntu(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1E2243),
                      )),
                  subtitle: Text(
                      continentes[index].countries.length.toString() +
                          ' países',
                      style: GoogleFonts.ubuntu(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF969AA8),
                      )),
                  leading: Builder(builder: (BuildContext context) {
                    return Image.asset(
                      'assets/images/continente$index@2x.png',
                    );
                  }),
                  trailing: Icon(Icons.arrow_forward_ios),
                  isThreeLine: true,
                  dense: false,
                  onTap: () {
                    Navigator.pushNamed(context, '/pagecontinente',
                        arguments: continentes[index]);
                  }),
            );
          },
        )),
      ),
    );
  }
}
