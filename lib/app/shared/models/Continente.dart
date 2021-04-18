import 'dart:convert';

class Continentes {
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int tests;
  int population;
  String continent; // Preciso
  List<String> countries; // Preciso
  Continentes({
    this.updated,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.active,
    this.critical,
    this.tests,
    this.population,
    this.continent,
    this.countries,
  });

  Map<String, dynamic> toMap() {
    return {
      'updated': updated,
      'cases': cases,
      'todayCases': todayCases,
      'deaths': deaths,
      'todayDeaths': todayDeaths,
      'recovered': recovered,
      'active': active,
      'critical': critical,
      'tests': tests,
      'population': population,
      'continent': continent,
      'countries': countries,
    };
  }

  factory Continentes.fromMap(Map<String, dynamic> map) {
    return Continentes(
      updated: map['updated'],
      cases: map['cases'],
      todayCases: map['todayCases'],
      deaths: map['deaths'],
      todayDeaths: map['todayDeaths'],
      recovered: map['recovered'],
      active: map['active'],
      critical: map['critical'],
      tests: map['tests'],
      population: map['population'],
      continent: map['continent'],
      countries: List<String>.from(map['countries']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Continentes.fromJson(String source) =>
      Continentes.fromMap(json.decode(source));
}
