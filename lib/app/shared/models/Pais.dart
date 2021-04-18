class Pais {
  String country; // Preciso
  CountryInfo countryInfo;
  int cases; // Preciso
  int deaths; // Preciso
  int recovered; // Preciso
  int active; // Preciso

  Pais(
      {this.country,
      this.countryInfo,
      this.cases,
      this.deaths,
      this.recovered,
      this.active});

  Pais.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    countryInfo = json['countryInfo'] != null
        ? new CountryInfo.fromJson(json['countryInfo'])
        : null;
    cases = json['cases'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    active = json['active'];
  }
}

class CountryInfo {
  String flag;

  CountryInfo({this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
  }
}
