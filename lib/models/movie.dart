class Movie {
  int iD;
  String nazivFilma;
  String engleskiNazivFilma;
  int kategorijaID;
  String redatelj;
  String trajanje;
  int godinaProizvodnje;
  String zemljaProdukcije;
  String zemljaProdukcijeEN;
  String fotografija;

  Movie.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    nazivFilma = json['NazivFilma'];
    engleskiNazivFilma = json['EngleskiNazivFilma'];
    kategorijaID = json['KategorijaID'];
    redatelj = json['Redatelj'];
    trajanje = json['Trajanje'];
    godinaProizvodnje = json['GodinaProizvodnje'];
    zemljaProdukcije = json['ZemljaProdukcije'];
    zemljaProdukcijeEN = json['ZemljaProdukcijeEN'];
    fotografija = json['Fotografija'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NazivFilma'] = this.nazivFilma;
    data['EngleskiNazivFilma'] = this.engleskiNazivFilma;
    data['KategorijaID'] = this.kategorijaID;
    data['Redatelj'] = this.redatelj;
    data['Trajanje'] = this.trajanje;
    data['GodinaProizvodnje'] = this.godinaProizvodnje;
    data['ZemljaProdukcije'] = this.zemljaProdukcije;
    data['ZemljaProdukcijeEN'] = this.zemljaProdukcijeEN;
    data['Fotografija'] = this.fotografija;
    return data;
  }
}
