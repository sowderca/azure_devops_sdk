part of azure_devops_sdk.api;

class CloneStatistics {
  /* Number of requirements cloned so far. */
  int clonedRequirementsCount = null;
  /* Number of shared steps cloned so far. */
  int clonedSharedStepsCount = null;
  /* Number of test cases cloned so far */
  int clonedTestCasesCount = null;
  /* Total number of requirements to be cloned */
  int totalRequirementsCount = null;
  /* Total number of test cases to be cloned */
  int totalTestCasesCount = null;
  CloneStatistics();

  @override
  String toString() {
    return 'CloneStatistics[clonedRequirementsCount=$clonedRequirementsCount, clonedSharedStepsCount=$clonedSharedStepsCount, clonedTestCasesCount=$clonedTestCasesCount, totalRequirementsCount=$totalRequirementsCount, totalTestCasesCount=$totalTestCasesCount, ]';
  }

  CloneStatistics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['clonedRequirementsCount'] == null) {
      clonedRequirementsCount = null;
    } else {
          clonedRequirementsCount = json['clonedRequirementsCount'];
    }
    if (json['clonedSharedStepsCount'] == null) {
      clonedSharedStepsCount = null;
    } else {
          clonedSharedStepsCount = json['clonedSharedStepsCount'];
    }
    if (json['clonedTestCasesCount'] == null) {
      clonedTestCasesCount = null;
    } else {
          clonedTestCasesCount = json['clonedTestCasesCount'];
    }
    if (json['totalRequirementsCount'] == null) {
      totalRequirementsCount = null;
    } else {
          totalRequirementsCount = json['totalRequirementsCount'];
    }
    if (json['totalTestCasesCount'] == null) {
      totalTestCasesCount = null;
    } else {
          totalTestCasesCount = json['totalTestCasesCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clonedRequirementsCount != null)
      json['clonedRequirementsCount'] = clonedRequirementsCount;
    if (clonedSharedStepsCount != null)
      json['clonedSharedStepsCount'] = clonedSharedStepsCount;
    if (clonedTestCasesCount != null)
      json['clonedTestCasesCount'] = clonedTestCasesCount;
    if (totalRequirementsCount != null)
      json['totalRequirementsCount'] = totalRequirementsCount;
    if (totalTestCasesCount != null)
      json['totalTestCasesCount'] = totalTestCasesCount;
    return json;
  }

  static List<CloneStatistics> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneStatistics>() : json.map((value) => CloneStatistics.fromJson(value)).toList();
  }

  static Map<String, CloneStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneStatistics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneStatistics.fromJson(value));
    }
    return map;
  }
}

