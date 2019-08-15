part of azure_devops_sdk.api;

class GitPushEventData {
  
  String afterId = null;
  
  String beforeId = null;
  
  String branch = null;
  
  List<GitCommit> commits = [];
  
  GitRepository repository = null;
  GitPushEventData();

  @override
  String toString() {
    return 'GitPushEventData[afterId=$afterId, beforeId=$beforeId, branch=$branch, commits=$commits, repository=$repository, ]';
  }

  GitPushEventData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['afterId'] == null) {
      afterId = null;
    } else {
          afterId = json['afterId'];
    }
    if (json['beforeId'] == null) {
      beforeId = null;
    } else {
          beforeId = json['beforeId'];
    }
    if (json['branch'] == null) {
      branch = null;
    } else {
          branch = json['branch'];
    }
    if (json['commits'] == null) {
      commits = null;
    } else {
      commits = GitCommit.listFromJson(json['commits']);
    }
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = GitRepository.fromJson(json['repository']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (afterId != null)
      json['afterId'] = afterId;
    if (beforeId != null)
      json['beforeId'] = beforeId;
    if (branch != null)
      json['branch'] = branch;
    if (commits != null)
      json['commits'] = commits;
    if (repository != null)
      json['repository'] = repository;
    return json;
  }

  static List<GitPushEventData> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPushEventData>() : json.map((value) => GitPushEventData.fromJson(value)).toList();
  }

  static Map<String, GitPushEventData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPushEventData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPushEventData.fromJson(value));
    }
    return map;
  }
}

