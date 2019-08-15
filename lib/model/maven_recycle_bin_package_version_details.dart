part of azure_devops_sdk.api;

class MavenRecycleBinPackageVersionDetails {
  /* Setting to false will undo earlier deletion and restore the package to feed. */
  bool deleted = null;
  MavenRecycleBinPackageVersionDetails();

  @override
  String toString() {
    return 'MavenRecycleBinPackageVersionDetails[deleted=$deleted, ]';
  }

  MavenRecycleBinPackageVersionDetails.fromJson(Map<String, dynamic> json) {
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

  static List<MavenRecycleBinPackageVersionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenRecycleBinPackageVersionDetails>() : json.map((value) => MavenRecycleBinPackageVersionDetails.fromJson(value)).toList();
  }

  static Map<String, MavenRecycleBinPackageVersionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenRecycleBinPackageVersionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenRecycleBinPackageVersionDetails.fromJson(value));
    }
    return map;
  }
}

