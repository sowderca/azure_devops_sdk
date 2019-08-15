part of azure_devops_sdk.api;

class MavenPackageVersionDeletionState {
  /* Artifact Id of the package. */
  String artifactId = null;
  /* UTC date the package was deleted. */
  DateTime deletedDate = null;
  /* Group Id of the package. */
  String groupId = null;
  /* Version of the package. */
  String version = null;
  MavenPackageVersionDeletionState();

  @override
  String toString() {
    return 'MavenPackageVersionDeletionState[artifactId=$artifactId, deletedDate=$deletedDate, groupId=$groupId, version=$version, ]';
  }

  MavenPackageVersionDeletionState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['groupId'] == null) {
      groupId = null;
    } else {
          groupId = json['groupId'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (groupId != null)
      json['groupId'] = groupId;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<MavenPackageVersionDeletionState> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPackageVersionDeletionState>() : json.map((value) => MavenPackageVersionDeletionState.fromJson(value)).toList();
  }

  static Map<String, MavenPackageVersionDeletionState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPackageVersionDeletionState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPackageVersionDeletionState.fromJson(value));
    }
    return map;
  }
}

