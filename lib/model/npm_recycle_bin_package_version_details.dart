part of azure_devops_sdk.api;

class NpmRecycleBinPackageVersionDetails {
  /* Setting to false will undo earlier deletion and restore the package to feed. */
  bool deleted = null;
  NpmRecycleBinPackageVersionDetails();

  @override
  String toString() {
    return 'NpmRecycleBinPackageVersionDetails[deleted=$deleted, ]';
  }

  NpmRecycleBinPackageVersionDetails.fromJson(Map<String, dynamic> json) {
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

  static List<NpmRecycleBinPackageVersionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<NpmRecycleBinPackageVersionDetails>() : json.map((value) => NpmRecycleBinPackageVersionDetails.fromJson(value)).toList();
  }

  static Map<String, NpmRecycleBinPackageVersionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NpmRecycleBinPackageVersionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NpmRecycleBinPackageVersionDetails.fromJson(value));
    }
    return map;
  }
}

