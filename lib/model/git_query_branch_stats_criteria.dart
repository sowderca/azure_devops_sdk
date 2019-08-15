part of azure_devops_sdk.api;

class GitQueryBranchStatsCriteria {
  
  GitVersionDescriptor baseCommit = null;
  
  List<GitVersionDescriptor> targetCommits = [];
  GitQueryBranchStatsCriteria();

  @override
  String toString() {
    return 'GitQueryBranchStatsCriteria[baseCommit=$baseCommit, targetCommits=$targetCommits, ]';
  }

  GitQueryBranchStatsCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseCommit'] == null) {
      baseCommit = null;
    } else {
      baseCommit = GitVersionDescriptor.fromJson(json['baseCommit']);
    }
    if (json['targetCommits'] == null) {
      targetCommits = null;
    } else {
      targetCommits = GitVersionDescriptor.listFromJson(json['targetCommits']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseCommit != null)
      json['baseCommit'] = baseCommit;
    if (targetCommits != null)
      json['targetCommits'] = targetCommits;
    return json;
  }

  static List<GitQueryBranchStatsCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<GitQueryBranchStatsCriteria>() : json.map((value) => GitQueryBranchStatsCriteria.fromJson(value)).toList();
  }

  static Map<String, GitQueryBranchStatsCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitQueryBranchStatsCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitQueryBranchStatsCriteria.fromJson(value));
    }
    return map;
  }
}

