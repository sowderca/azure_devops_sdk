part of azure_devops_sdk.api;

class TestResultsGroupsForRelease {
  /* The group by results */
  List<FieldDetailsForTestResults> fields = [];
  /* Release Environment Id for which groupby result is fetched. */
  int releaseEnvId = null;
  /* ReleaseId for which groupby result is fetched. */
  int releaseId = null;
  TestResultsGroupsForRelease();

  @override
  String toString() {
    return 'TestResultsGroupsForRelease[fields=$fields, releaseEnvId=$releaseEnvId, releaseId=$releaseId, ]';
  }

  TestResultsGroupsForRelease.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = FieldDetailsForTestResults.listFromJson(json['fields']);
    }
    if (json['releaseEnvId'] == null) {
      releaseEnvId = null;
    } else {
          releaseEnvId = json['releaseEnvId'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    if (releaseEnvId != null)
      json['releaseEnvId'] = releaseEnvId;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    return json;
  }

  static List<TestResultsGroupsForRelease> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsGroupsForRelease>() : json.map((value) => TestResultsGroupsForRelease.fromJson(value)).toList();
  }

  static Map<String, TestResultsGroupsForRelease> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsGroupsForRelease>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsGroupsForRelease.fromJson(value));
    }
    return map;
  }
}

