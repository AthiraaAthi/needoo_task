class NeedooApi {
  int? customerId;
  String? latitude;
  String? longitude;
  List<Merchant>? merchants;

  NeedooApi({
    this.customerId,
    this.latitude,
    this.longitude,
    this.merchants,
  });

  factory NeedooApi.fromJson(Map<String, dynamic> json) => NeedooApi(
        customerId: json["customer_id"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        merchants: json["merchants"] == null
            ? []
            : List<Merchant>.from(
                json["merchants"]!.map((x) => Merchant.fromJson(x))),
      );
}

class Merchant {
  String? name;
  double? distance;
  List<String>? categories;

  Merchant({
    this.name,
    this.distance,
    this.categories,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        name: json["name"],
        distance: json["distance"]?.toDouble(),
        categories: json["categories"] == null
            ? []
            : List<String>.from(json["categories"]!.map((x) => x)),
      );
}
