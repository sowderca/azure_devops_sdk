part of azure_devops_sdk.api;

class IncludedGitCommit {
  
  String commitId = null;
  
  DateTime commitTime = null;
  
  List<String> parentCommitIds = [];
  
  String repositoryId = null;
  IncludedGitCommit();

  @override
  String toString() {
    return 'IncludedGitCommit[commitId=$commitId, commitTime=$commitTime, parentCommitIds=$parentCommitIds, repositoryId=$repositoryId, ]';
  }

  IncludedGitCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commitId'] == null) {
      commitId = null;
    } else {
          commitId = json['commitId'];
    }
    if (json['commitTime'] == null) {
      commitTime = null;
    } else {
      commitTime = DateTime.parse(json['commitTime']);
    }
    if (json['parentCommitIds'] == null) {
      parentCommitIds = null;
    } else {
      parentCommitIds = (json['parentCommitIds'] as List).cast<String>();
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commitId != null)
      json['commitId'] = commitId;
    if (commitTime != null)
      json['commitTime'] = commitTime == null ? null : commitTime.toUtc().toIso8601String();
    if (parentCommitIds != null)
      json['parentCommitIds'] = parentCommitIds;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    return json;
  }

  static List<IncludedGitCommit> listFromJson(List<dynamic> json) {
    return json == null ? List<IncludedGitCommit>() : json.map((value) => IncludedGitCommit.fromJson(value)).toList();
  }

  static Map<String, IncludedGitCommit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IncludedGitCommit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IncludedGitCommit.fromJson(value));
    }
    return map;
  }
}

