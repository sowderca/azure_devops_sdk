part of azure_devops_sdk.api;

class TestTagSummary {
  /* Dictionary which contains tags associated with a test run. */
  Map<String, List<TestTag>> tagsGroupByTestArtifact = {};
  TestTagSummary();

  @override
  String toString() {
    return 'TestTagSummary[tagsGroupByTestArtifact=$tagsGroupByTestArtifact, ]';
  }

  TestTagSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['tagsGroupByTestArtifact'] == null) {
      tagsGroupByTestArtifact = null;
    } else {
      tagsGroupByTestArtifact = List.mapFromJson(json['tagsGroupByTestArtifact']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (tagsGroupByTestArtifact != null)
      json['tagsGroupByTestArtifact'] = tagsGroupByTestArtifact;
    return json;
  }

  static List<TestTagSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<TestTagSummary>() : json.map((value) => TestTagSummary.fromJson(value)).toList();
  }

  static Map<String, TestTagSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestTagSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestTagSummary.fromJson(value));
    }
    return map;
  }
}

