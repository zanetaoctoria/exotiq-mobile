// To parse this JSON data, do
//
//     final ProductEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<Items> productEntryFromJson(String str) => List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String productEntryToJson(List<Items> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
    String model;
    String pk;
    Fields fields;

    Items({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
    };
}