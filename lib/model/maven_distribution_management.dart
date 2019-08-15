part of azure_devops_sdk.api;

class MavenDistributionManagement {
  
  MavenRepository repository = null;
  
  MavenSnapshotRepository snapshotRepository = null;
  MavenDistributionManagement();

  @override
  String toString() {
    return 'MavenDistributionManagement[repository=$repository, snapshotRepository=$snapshotRepository, ]';
  }

  MavenDistributionManagement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = MavenRepository.fromJson(json['repository']);
    }
    if (json['snapshotRepository'] == null) {
      snapshotRepository = null;
    } else {
      snapshotRepository = MavenSnapshotRepository.fromJson(json['snapshotRepository']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (repository != null)
      json['repository'] = repository;
    if (snapshotRepository != null)
      json['snapshotRepository'] = snapshotRepository;
    return json;
  }

  static List<MavenDistributionManagement> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenDistributionManagement>() : json.map((value) => MavenDistributionManagement.fromJson(value)).toList();
  }

  static Map<String, MavenDistributionManagement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenDistributionManagement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenDistributionManagement.fromJson(value));
    }
    return map;
  }
}

