part of azure_devops_sdk.api;

class NpmPackageVersionDeletionState {
  /* Name of the package. */
  String name = null;
  /* UTC date the package was unpublished. */
  DateTime unpublishedDate = null;
  /* Version of the package. */
  String version = null;
  NpmPackageVersionDeletionState();

  @override
  String toString() {
    return 'NpmPackageVersionDeletionState[name=$name, unpublishedDate=$unpublishedDate, version=$version, ]';
  }

  NpmPackageVersionDeletionState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['unpublishedDate'] == null) {
      unpublishedDate = null;
    } else {
      unpublishedDate = DateTime.parse(json['unpublishedDate']);
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (unpublishedDate != null)
      json['unpublishedDate'] = unpublishedDate == null ? null : unpublishedDate.toUtc().toIso8601String();
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<NpmPackageVersionDeletionState> listFromJson(List<dynamic> json) {
    return json == null ? List<NpmPackageVersionDeletionState>() : json.map((value) => NpmPackageVersionDeletionState.fromJson(value)).toList();
  }

  static Map<String, NpmPackageVersionDeletionState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NpmPackageVersionDeletionState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NpmPackageVersionDeletionState.fromJson(value));
    }
    return map;
  }
}

