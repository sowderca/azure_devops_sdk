part of azure_devops_sdk.api;

class PyPiRecycleBinPackageVersionDetails {
  /* Setting to false will undo earlier deletion and restore the package to feed. */
  bool deleted = null;
  PyPiRecycleBinPackageVersionDetails();

  @override
  String toString() {
    return 'PyPiRecycleBinPackageVersionDetails[deleted=$deleted, ]';
  }

  PyPiRecycleBinPackageVersionDetails.fromJson(Map<String, dynamic> json) {
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

  static List<PyPiRecycleBinPackageVersionDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<PyPiRecycleBinPackageVersionDetails>() : json.map((value) => PyPiRecycleBinPackageVersionDetails.fromJson(value)).toList();
  }

  static Map<String, PyPiRecycleBinPackageVersionDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PyPiRecycleBinPackageVersionDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PyPiRecycleBinPackageVersionDetails.fromJson(value));
    }
    return map;
  }
}

