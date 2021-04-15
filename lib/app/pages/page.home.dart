import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
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
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text('Nome.. $index'),
              subtitle: Text('Descricao Qualquer...'),
              leading: Icon(Icons.account_circle, size: 44),
            );
          },
        ));
  }
}
