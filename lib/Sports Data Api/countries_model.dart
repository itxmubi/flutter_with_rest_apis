// To parse this JSON data, do
//
//     final countriesModel = countriesModelFromJson(jsonString);

import 'dart:convert';

CountriesModel countriesModelFromJson(String str) => CountriesModel.fromJson(json.decode(str));

String countriesModelToJson(CountriesModel data) => json.encode(data.toJson());

class CountriesModel {
    CountriesModel({
        required this.query,
        required this.data,
    });

    Query query;
    Map<String, Datum> data;

    factory CountriesModel.fromJson(Map<String, dynamic> json) => CountriesModel(
        query: Query.fromJson(json["query"]),
        data: Map.from(json["data"]).map((k, v) => MapEntry<String, Datum>(k, Datum.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "query": query.toJson(),
        "data": Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class Datum {
    Datum({
        required this.countryId,
        required this.name,
        this.countryCode,
        required this.continent,
    });

    int countryId;
    String name;
    String? countryCode;
    Continent continent;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        countryId: json["country_id"],
        name: json["name"],
        countryCode: json["country_code"],
        continent: continentValues.map[json["continent"]]!,
    );

    Map<String, dynamic> toJson() => {
        "country_id": countryId,
        "name": name,
        "country_code": countryCode,
        "continent": continentValues.reverse[continent],
    };
}

enum Continent { EUROPE }

final continentValues = EnumValues({
    "Europe": Continent.EUROPE
});

class Query {
    Query({
        required this.action,
        required this.value,
        required this.apikey,
        required this.continent,
    });

    String action;
    String value;
    String apikey;
    Continent continent;

    factory Query.fromJson(Map<String, dynamic> json) => Query(
        action: json["ACTION"],
        value: json["VALUE"],
        apikey: json["apikey"],
        continent: continentValues.map[json["continent"]]!,
    );

    Map<String, dynamic> toJson() => {
        "ACTION": action,
        "VALUE": value,
        "apikey": apikey,
        "continent": continentValues.reverse[continent],
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
