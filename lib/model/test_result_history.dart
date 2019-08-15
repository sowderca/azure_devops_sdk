part of azure_devops_sdk.api;

class TestResultHistory {
  
  String groupByField = null;
  
  List<TestResultHistoryDetailsForGroup> resultsForGroup = [];
  TestResultHistory();

  @override
  String toString() {
    return 'TestResultHistory[groupByField=$groupByField, resultsForGroup=$resultsForGroup, ]';
  }

  TestResultHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['groupByField'] == null) {
      groupByField = null;
    } else {
          groupByField = json['groupByField'];
    }
    if (json['resultsForGroup'] == null) {
      resultsForGroup = null;
    } else {
      resultsForGroup = TestResultHistoryDetailsForGroup.listFromJson(json['resultsForGroup']);
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

  static List<TestResultHistory> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultHistory>() : json.map((value) => TestResultHistory.fromJson(value)).toList();
  }

  static Map<String, TestResultHistory> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultHistory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultHistory.fromJson(value));
    }
    return map;
  }
}

