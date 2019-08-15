part of azure_devops_sdk.api;

class TestResultsGroupsForBuild {
  /* BuildId for which groupby result is fetched. */
  int buildId = null;
  /* The group by results */
  List<FieldDetailsForTestResults> fields = [];
  TestResultsGroupsForBuild();

  @override
  String toString() {
    return 'TestResultsGroupsForBuild[buildId=$buildId, fields=$fields, ]';
  }

  TestResultsGroupsForBuild.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = FieldDetailsForTestResults.listFromJson(json['fields']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildId != null)
      json['buildId'] = buildId;
    if (fields != null)
      json['fields'] = fields;
    return json;
  }

  static List<TestResultsGroupsForBuild> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsGroupsForBuild>() : json.map((value) => TestResultsGroupsForBuild.fromJson(value)).toList();
  }

  static Map<String, TestResultsGroupsForBuild> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsGroupsForBuild>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsGroupsForBuild.fromJson(value));
    }
    return map;
  }
}

