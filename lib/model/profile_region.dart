part of azure_devops_sdk.api;

class ProfileRegion {
  /* The two-letter code defined in ISO 3166 for the country/region. */
  String code = null;
  /* Localized country/region name */
  String name = null;
  ProfileRegion();

  @override
  String toString() {
    return 'ProfileRegion[code=$code, name=$name, ]';
  }

  ProfileRegion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ProfileRegion> listFromJson(List<dynamic> json) {
    return json == null ? List<ProfileRegion>() : json.map((value) => ProfileRegion.fromJson(value)).toList();
  }

  static Map<String, ProfileRegion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProfileRegion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProfileRegion.fromJson(value));
    }
    return map;
  }
}

