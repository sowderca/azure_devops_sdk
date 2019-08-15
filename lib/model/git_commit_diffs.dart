part of azure_devops_sdk.api;

class GitCommitDiffs {
  
  int aheadCount = null;
  
  bool allChangesIncluded = null;
  
  String baseCommit = null;
  
  int behindCount = null;
  
  Map<String, int> changeCounts = {};
  
  List<GitChange> changes = [];
  
  String commonCommit = null;
  
  String targetCommit = null;
  GitCommitDiffs();

  @override
  String toString() {
    return 'GitCommitDiffs[aheadCount=$aheadCount, allChangesIncluded=$allChangesIncluded, baseCommit=$baseCommit, behindCount=$behindCount, changeCounts=$changeCounts, changes=$changes, commonCommit=$commonCommit, targetCommit=$targetCommit, ]';
  }

  GitCommitDiffs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aheadCount'] == null) {
      aheadCount = null;
    } else {
          aheadCount = json['aheadCount'];
    }
    if (json['allChangesIncluded'] == null) {
      allChangesIncluded = null;
    } else {
          allChangesIncluded = json['allChangesIncluded'];
    }
    if (json['baseCommit'] == null) {
      baseCommit = null;
    } else {
          baseCommit = json['baseCommit'];
    }
    if (json['behindCount'] == null) {
      behindCount = null;
    } else {
          behindCount = json['behindCount'];
    }
    if (json['changeCounts'] == null) {
      changeCounts = null;
    } else {
          changeCounts = (json['changeCounts'] as Map).cast<String, int>();
    }
    if (json['changes'] == null) {
      changes = null;
    } else {
      changes = GitChange.listFromJson(json['changes']);
    }
    if (json['commonCommit'] == null) {
      commonCommit = null;
    } else {
          commonCommit = json['commonCommit'];
    }
    if (json['targetCommit'] == null) {
      targetCommit = null;
    } else {
          targetCommit = json['targetCommit'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aheadCount != null)
      json['aheadCount'] = aheadCount;
    if (allChangesIncluded != null)
      json['allChangesIncluded'] = allChangesIncluded;
    if (baseCommit != null)
      json['baseCommit'] = baseCommit;
    if (behindCount != null)
      json['behindCount'] = behindCount;
    if (changeCounts != null)
      json['changeCounts'] = changeCounts;
    if (changes != null)
      json['changes'] = changes;
    if (commonCommit != null)
      json['commonCommit'] = commonCommit;
    if (targetCommit != null)
      json['targetCommit'] = targetCommit;
    return json;
  }

  static List<GitCommitDiffs> listFromJson(List<dynamic> json) {
    return json == null ? List<GitCommitDiffs>() : json.map((value) => GitCommitDiffs.fromJson(value)).toList();
  }

  static Map<String, GitCommitDiffs> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitCommitDiffs>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitCommitDiffs.fromJson(value));
    }
    return map;
  }
}

