part of azure_devops_sdk.api;

class PackageVersionDetails {
  /* Indicates the deprecate message of a package version */
  String deprecateMessage = null;
  
  JsonPatchOperation views = null;
  PackageVersionDetails();

  @override
  String toString() {
    return 'PackageVersionDetails[deprecateMessage=$deprecateMessage, views=$views, ]';
  }

  PackageVersionDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deprecateMessage'] == null) {
      deprecateMessage = null;
    } else {
          deprecateMessage = json['deprecateMessage'];
    }
    if (json['views'] == null) {
      views = null;
    } else {
      views = JsonPatchOperation.fromJson(json['views']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deprecateMessage != null)
      json['deprecateMessage'] = deprecateMessage;
    if (views != null)
      json['views'] = views;
    return json;
  }

  static List<PackageVersionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageVersionDetails>() : json.map((value) => PackageVersionDetails.fromJson(value)).toList();
  }

  static Map<String, PackageVersionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageVersionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageVersionDetails.fromJson(value));
    }
    return map;
  }
}

