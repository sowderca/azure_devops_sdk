part of azure_devops_sdk.api;

class MinimalPackageDetails {
  /* Package name. */
  String id = null;
  /* Package version. */
  String version = null;
  MinimalPackageDetails();

  @override
  String toString() {
    return 'MinimalPackageDetails[id=$id, version=$version, ]';
  }

  MinimalPackageDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<MinimalPackageDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<MinimalPackageDetails>() : json.map((value) => MinimalPackageDetails.fromJson(value)).toList();
  }

  static Map<String, MinimalPackageDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MinimalPackageDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MinimalPackageDetails.fromJson(value));
    }
    return map;
  }
}

