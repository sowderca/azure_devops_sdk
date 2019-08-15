part of azure_devops_sdk.api;

class RetentionPolicy {
  
  List<String> artifacts = [];
  
  List<String> artifactTypesToDelete = [];
  
  List<String> branches = [];
  /* The number of days to keep builds. */
  int daysToKeep = null;
  /* Indicates whether the build record itself should be deleted. */
  bool deleteBuildRecord = null;
  /* Indicates whether to delete test results associated with the build. */
  bool deleteTestResults = null;
  /* The minimum number of builds to keep. */
  int minimumToKeep = null;
  RetentionPolicy();

  @override
  String toString() {
    return 'RetentionPolicy[artifacts=$artifacts, artifactTypesToDelete=$artifactTypesToDelete, branches=$branches, daysToKeep=$daysToKeep, deleteBuildRecord=$deleteBuildRecord, deleteTestResults=$deleteTestResults, minimumToKeep=$minimumToKeep, ]';
  }

  RetentionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifacts'] == null) {
      artifacts = null;
    } else {
      artifacts = (json['artifacts'] as List).cast<String>();
    }
    if (json['artifactTypesToDelete'] == null) {
      artifactTypesToDelete = null;
    } else {
      artifactTypesToDelete = (json['artifactTypesToDelete'] as List).cast<String>();
    }
    if (json['branches'] == null) {
      branches = null;
    } else {
      branches = (json['branches'] as List).cast<String>();
    }
    if (json['daysToKeep'] == null) {
      daysToKeep = null;
    } else {
          daysToKeep = json['daysToKeep'];
    }
    if (json['deleteBuildRecord'] == null) {
      deleteBuildRecord = null;
    } else {
          deleteBuildRecord = json['deleteBuildRecord'];
    }
    if (json['deleteTestResults'] == null) {
      deleteTestResults = null;
    } else {
          deleteTestResults = json['deleteTestResults'];
    }
    if (json['minimumToKeep'] == null) {
      minimumToKeep = null;
    } else {
          minimumToKeep = json['minimumToKeep'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifacts != null)
      json['artifacts'] = artifacts;
    if (artifactTypesToDelete != null)
      json['artifactTypesToDelete'] = artifactTypesToDelete;
    if (branches != null)
      json['branches'] = branches;
    if (daysToKeep != null)
      json['daysToKeep'] = daysToKeep;
    if (deleteBuildRecord != null)
      json['deleteBuildRecord'] = deleteBuildRecord;
    if (deleteTestResults != null)
      json['deleteTestResults'] = deleteTestResults;
    if (minimumToKeep != null)
      json['minimumToKeep'] = minimumToKeep;
    return json;
  }

  static List<RetentionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? List<RetentionPolicy>() : json.map((value) => RetentionPolicy.fromJson(value)).toList();
  }

  static Map<String, RetentionPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RetentionPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RetentionPolicy.fromJson(value));
    }
    return map;
  }
}

