part of azure_devops_sdk.api;

class NuGetRecycleBinPackageVersionDetails {
  /* Setting to false will undo earlier deletion and restore the package to feed. */
  bool deleted = null;
  NuGetRecycleBinPackageVersionDetails();

  @override
  String toString() {
    return 'NuGetRecycleBinPackageVersionDetails[deleted=$deleted, ]';
  }

  NuGetRecycleBinPackageVersionDetails.fromJson(Map<String, dynamic> json) {
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

  static List<NuGetRecycleBinPackageVersionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<NuGetRecycleBinPackageVersionDetails>() : json.map((value) => NuGetRecycleBinPackageVersionDetails.fromJson(value)).toList();
  }

  static Map<String, NuGetRecycleBinPackageVersionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NuGetRecycleBinPackageVersionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NuGetRecycleBinPackageVersionDetails.fromJson(value));
    }
    return map;
  }
}

