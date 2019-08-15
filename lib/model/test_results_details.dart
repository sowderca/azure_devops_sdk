part of azure_devops_sdk.api;

class TestResultsDetails {
  
  String groupByField = null;
  
  List<TestResultsDetailsForGroup> resultsForGroup = [];
  TestResultsDetails();

  @override
  String toString() {
    return 'TestResultsDetails[groupByField=$groupByField, resultsForGroup=$resultsForGroup, ]';
  }

  TestResultsDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['groupByField'] == null) {
      groupByField = null;
    } else {
          groupByField = json['groupByField'];
    }
    if (json['resultsForGroup'] == null) {
      resultsForGroup = null;
    } else {
      resultsForGroup = TestResultsDetailsForGroup.listFromJson(json['resultsForGroup']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (groupByField != null)
      json['groupByField'] = groupByField;
    if (resultsForGroup != null)
      json['resultsForGroup'] = resultsForGroup;
    return json;
  }

  static List<TestResultsDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsDetails>() : json.map((value) => TestResultsDetails.fromJson(value)).toList();
  }

  static Map<String, TestResultsDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsDetails.fromJson(value));
    }
    return map;
  }
}

