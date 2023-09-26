class CitiesModel {
  List<CityModel>? city;

  CitiesModel({this.city});

  CitiesModel.fromJson(Map<String, dynamic> json) {
    if (json['City'] != null) {
      city = <CityModel>[];
      json['City'].forEach((v) {
        city!.add(new CityModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.city != null) {
      data['City'] = this.city!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CityModel {
  int? id;
  String? name;
  Country? country;
  bool? isRemoved;

  CityModel({this.id, this.name, this.country, this.isRemoved});

  CityModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    country =
        json['Country'] != null ? new Country.fromJson(json['Country']) : null;
    isRemoved = json['IsRemoved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    if (this.country != null) {
      data['Country'] = this.country!.toJson();
    }
    data['IsRemoved'] = this.isRemoved;
    return data;
  }
}

class Country {
  int? id;
  String? name;
  bool? isRemoved;

  Country({this.id, this.name, this.isRemoved});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    isRemoved = json['IsRemoved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['IsRemoved'] = this.isRemoved;
    return data;
  }
}
