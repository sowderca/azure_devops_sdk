part of azure_devops_sdk.api;

class GitImportFailedEvent {
  
  String sourceRepositoryName = null;
  
  GitRepository targetRepository = null;
  GitImportFailedEvent();

  @override
  String toString() {
    return 'GitImportFailedEvent[sourceRepositoryName=$sourceRepositoryName, targetRepository=$targetRepository, ]';
  }

  GitImportFailedEvent.fromJson(Map<String, dynamic> json) {
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

  static List<GitImportFailedEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportFailedEvent>() : json.map((value) => GitImportFailedEvent.fromJson(value)).toList();
  }

  static Map<String, GitImportFailedEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportFailedEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportFailedEvent.fromJson(value));
    }
    return map;
  }
}

