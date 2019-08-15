part of azure_devops_sdk.api;

class UPackRecycleBinPackageVersionDetails {
  /* Setting to false will undo earlier deletion and restore the package to feed. */
  bool deleted = null;
  UPackRecycleBinPackageVersionDetails();

  @override
  String toString() {
    return 'UPackRecycleBinPackageVersionDetails[deleted=$deleted, ]';
  }

  UPackRecycleBinPackageVersionDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deleted'] == null) {
      deleted = null;
    } else {
          deleted = json['deleted'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deleted != null)
      json['deleted'] = deleted;
    return json;
  }

  static List<UPackRecycleBinPackageVersionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<UPackRecycleBinPackageVersionDetails>() : json.map((value) => UPackRecycleBinPackageVersionDetails.fromJson(value)).toList();
  }

  static Map<String, UPackRecycleBinPackageVersionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UPackRecycleBinPackageVersionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UPackRecycleBinPackageVersionDetails.fromJson(value));
    }
    return map;
  }
}

