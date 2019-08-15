part of azure_devops_sdk.api;

class MavenSnapshotRepository {
  
  bool uniqueVersion = null;
  MavenSnapshotRepository();

  @override
  String toString() {
    return 'MavenSnapshotRepository[uniqueVersion=$uniqueVersion, ]';
  }

  MavenSnapshotRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['uniqueVersion'] == null) {
      uniqueVersion = null;
    } else {
          uniqueVersion = json['uniqueVersion'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (uniqueVersion != null)
      json['uniqueVersion'] = uniqueVersion;
    return json;
  }

  static List<MavenSnapshotRepository> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenSnapshotRepository>() : json.map((value) => MavenSnapshotRepository.fromJson(value)).toList();
  }

  static Map<String, MavenSnapshotRepository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenSnapshotRepository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenSnapshotRepository.fromJson(value));
    }
    return map;
  }
}

