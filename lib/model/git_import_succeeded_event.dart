part of azure_devops_sdk.api;

class GitImportSucceededEvent {
  
  String sourceRepositoryName = null;
  
  GitRepository targetRepository = null;
  GitImportSucceededEvent();

  @override
  String toString() {
    return 'GitImportSucceededEvent[sourceRepositoryName=$sourceRepositoryName, targetRepository=$targetRepository, ]';
  }

  GitImportSucceededEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sourceRepositoryName'] == null) {
      sourceRepositoryName = null;
    } else {
          sourceRepositoryName = json['sourceRepositoryName'];
    }
    if (json['targetRepository'] == null) {
      targetRepository = null;
    } else {
      targetRepository = GitRepository.fromJson(json['targetRepository']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sourceRepositoryName != null)
      json['sourceRepositoryName'] = sourceRepositoryName;
    if (targetRepository != null)
      json['targetRepository'] = targetRepository;
    return json;
  }

  static List<GitImportSucceededEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportSucceededEvent>() : json.map((value) => GitImportSucceededEvent.fromJson(value)).toList();
  }

  static Map<String, GitImportSucceededEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportSucceededEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportSucceededEvent.fromJson(value));
    }
    return map;
  }
}

