part of azure_devops_sdk.api;

class PyPiPackageVersionDeletionState {
  /* UTC date the package was deleted. */
  DateTime deletedDate = null;
  /* Name of the package. */
  String name = null;
  /* Version of the package. */
  String version = null;
  PyPiPackageVersionDeletionState();

  @override
  String toString() {
    return 'PyPiPackageVersionDeletionState[deletedDate=$deletedDate, name=$name, version=$version, ]';
  }

  PyPiPackageVersionDeletionState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<PyPiPackageVersionDeletionState> listFromJson(List<dynamic> json) {
    return json == null ? List<PyPiPackageVersionDeletionState>() : json.map((value) => PyPiPackageVersionDeletionState.fromJson(value)).toList();
  }

  static Map<String, PyPiPackageVersionDeletionState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PyPiPackageVersionDeletionState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PyPiPackageVersionDeletionState.fromJson(value));
    }
    return map;
  }
}

