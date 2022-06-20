import 'dart:convert';

class HomeModel {
  HomeModel({
    required this.error,
    required this.slider,
    required this.category,
    required this.popular,
    required this.verified,
  });

  final bool error;
  final List<String> slider;
  final List<Category> category;
  final List<Popular> popular;
  final List<Verified> verified;

  factory HomeModel.fromRawJson(String str) =>
      HomeModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        error: json["error"],
        slider: List<String>.from(json["slider"].map((x) => x)),
        category: List<Category>.from(
            json["category"].map((x) => Category.fromJson(x))),
        popular:
            List<Popular>.from(json["popular"].map((x) => Popular.fromJson(x))),
        verified: List<Verified>.from(
            json["verified"].map((x) => Verified.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "slider": List<dynamic>.from(slider.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => x.toJson())),
        "popular": List<dynamic>.from(popular.map((x) => x.toJson())),
        "verified": List<dynamic>.from(verified.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.name,
    required this.icon,
  });

  final String name;
  final String icon;

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "icon": icon,
      };
}

class Popular {
  Popular({
    required this.vendorName,
    required this.image,
    required this.productCount,
  });

  final String vendorName;
  final String image;
  final String productCount;

  factory Popular.fromRawJson(String str) => Popular.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Popular.fromJson(Map<String, dynamic> json) => Popular(
        vendorName: json["vendorName"],
        image: json["image"],
        productCount: json["productCount"],
      );

  Map<String, dynamic> toJson() => {
        "vendorName": vendorName,
        "image": image,
        "productCount": productCount,
      };
}

class Verified {
  Verified({
    required this.vendorname,
    required this.image,
  });

  final String vendorname;
  final String image;

  factory Verified.fromRawJson(String str) =>
      Verified.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Verified.fromJson(Map<String, dynamic> json) => Verified(
        vendorname: json["vendorname"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "vendorname": vendorname,
        "image": image,
      };
}
