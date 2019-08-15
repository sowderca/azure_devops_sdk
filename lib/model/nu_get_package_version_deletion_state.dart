part of azure_devops_sdk.api;

class NuGetPackageVersionDeletionState {
  /* Utc date the package was deleted. */
  DateTime deletedDate = null;
  /* Name of the package. */
  String name = null;
  /* Version of the package. */
  String version = null;
  NuGetPackageVersionDeletionState();

  @override
  String toString() {
    return 'NuGetPackageVersionDeletionState[deletedDate=$deletedDate, name=$name, version=$version, ]';
  }

  NuGetPackageVersionDeletionState.fromJson(Map<String, dynamic> json) {
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

  static List<NuGetPackageVersionDeletionState> listFromJson(List<dynamic> json) {
    return json == null ? List<NuGetPackageVersionDeletionState>() : json.map((value) => NuGetPackageVersionDeletionState.fromJson(value)).toList();
  }

  static Map<String, NuGetPackageVersionDeletionState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NuGetPackageVersionDeletionState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NuGetPackageVersionDeletionState.fromJson(value));
    }
    return map;
  }
}

