part of azure_devops_sdk.api;

class GeoRegion {
  
  String regionCode = null;
  GeoRegion();

  @override
  String toString() {
    return 'GeoRegion[regionCode=$regionCode, ]';
  }

  GeoRegion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['regionCode'] == null) {
      regionCode = null;
    } else {
          regionCode = json['regionCode'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (regionCode != null)
      json['regionCode'] = regionCode;
    return json;
  }

  static List<GeoRegion> listFromJson(List<dynamic> json) {
    return json == null ? List<GeoRegion>() : json.map((value) => GeoRegion.fromJson(value)).toList();
  }

  static Map<String, GeoRegion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GeoRegion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GeoRegion.fromJson(value));
    }
    return map;
  }
}

