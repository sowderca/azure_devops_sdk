part of azure_devops_sdk.api;

class GitRepositoryStats {
  
  int activePullRequestsCount = null;
  
  int branchesCount = null;
  
  int commitsCount = null;
  
  String repositoryId = null;
  GitRepositoryStats();

  @override
  String toString() {
    return 'GitRepositoryStats[activePullRequestsCount=$activePullRequestsCount, branchesCount=$branchesCount, commitsCount=$commitsCount, repositoryId=$repositoryId, ]';
  }

  GitRepositoryStats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['activePullRequestsCount'] == null) {
      activePullRequestsCount = null;
    } else {
          activePullRequestsCount = json['activePullRequestsCount'];
    }
    if (json['branchesCount'] == null) {
      branchesCount = null;
    } else {
          branchesCount = json['branchesCount'];
    }
    if (json['commitsCount'] == null) {
      commitsCount = null;
    } else {
          commitsCount = json['commitsCount'];
    }
    if (json['repositoryId'] == null) {
      repositoryId = null;
    } else {
          repositoryId = json['repositoryId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (activePullRequestsCount != null)
      json['activePullRequestsCount'] = activePullRequestsCount;
    if (branchesCount != null)
      json['branchesCount'] = branchesCount;
    if (commitsCount != null)
      json['commitsCount'] = commitsCount;
    if (repositoryId != null)
      json['repositoryId'] = repositoryId;
    return json;
  }

  static List<GitRepositoryStats> listFromJson(List<dynamic> json) {
    return json == null ? List<GitRepositoryStats>() : json.map((value) => GitRepositoryStats.fromJson(value)).toList();
  }

  static Map<String, GitRepositoryStats> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitRepositoryStats>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitRepositoryStats.fromJson(value));
    }
    return map;
  }
}

