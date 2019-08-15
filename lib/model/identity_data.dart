part of azure_devops_sdk.api;

class IdentityData {
  
  List<String> identityIds = [];
  IdentityData();

  @override
  String toString() {
    return 'IdentityData[identityIds=$identityIds, ]';
  }

  IdentityData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identityIds'] == null) {
      identityIds = null;
    } else {
      identityIds = (json['identityIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identityIds != null)
      json['identityIds'] = identityIds;
    return json;
  }

  static List<IdentityData> listFromJson(List<dynamic> json) {
    return json == null ? List<IdentityData>() : json.map((value) => IdentityData.fromJson(value)).toList();
  }

  static Map<String, IdentityData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IdentityData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IdentityData.fromJson(value));
    }
    return map;
  }
}

