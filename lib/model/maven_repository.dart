part of azure_devops_sdk.api;

class MavenRepository {
  
  bool uniqueVersion = null;
  MavenRepository();

  @override
  String toString() {
    return 'MavenRepository[uniqueVersion=$uniqueVersion, ]';
  }

  MavenRepository.fromJson(Map<String, dynamic> json) {
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

  static List<MavenRepository> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenRepository>() : json.map((value) => MavenRepository.fromJson(value)).toList();
  }

  static Map<String, MavenRepository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenRepository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenRepository.fromJson(value));
    }
    return map;
  }
}

