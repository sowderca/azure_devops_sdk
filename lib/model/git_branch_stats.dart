part of azure_devops_sdk.api;

class GitBranchStats {
  /* Number of commits ahead. */
  int aheadCount = null;
  /* Number of commits behind. */
  int behindCount = null;
  
  GitCommitRef commit = null;
  /* True if this is the result for the base version. */
  bool isBaseVersion = null;
  /* Name of the ref. */
  String name = null;
  GitBranchStats();

  @override
  String toString() {
    return 'GitBranchStats[aheadCount=$aheadCount, behindCount=$behindCount, commit=$commit, isBaseVersion=$isBaseVersion, name=$name, ]';
  }

  GitBranchStats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aheadCount'] == null) {
      aheadCount = null;
    } else {
          aheadCount = json['aheadCount'];
    }
    if (json['behindCount'] == null) {
      behindCount = null;
    } else {
          behindCount = json['behindCount'];
    }
    if (json['commit'] == null) {
      commit = null;
    } else {
      commit = GitCommitRef.fromJson(json['commit']);
    }
    if (json['isBaseVersion'] == null) {
      isBaseVersion = null;
    } else {
          isBaseVersion = json['isBaseVersion'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aheadCount != null)
      json['aheadCount'] = aheadCount;
    if (behindCount != null)
      json['behindCount'] = behindCount;
    if (commit != null)
      json['commit'] = commit;
    if (isBaseVersion != null)
      json['isBaseVersion'] = isBaseVersion;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<GitBranchStats> listFromJson(List<dynamic> json) {
    return json == null ? List<GitBranchStats>() : json.map((value) => GitBranchStats.fromJson(value)).toList();
  }

  static Map<String, GitBranchStats> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitBranchStats>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitBranchStats.fromJson(value));
    }
    return map;
  }
}

