part of azure_devops_sdk.api;

class TestSummaryForWorkItem {
  
  AggregatedDataForResultTrend summary = null;
  
  WorkItemReference workItem = null;
  TestSummaryForWorkItem();

  @override
  String toString() {
    return 'TestSummaryForWorkItem[summary=$summary, workItem=$workItem, ]';
  }

  TestSummaryForWorkItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['summary'] == null) {
      summary = null;
    } else {
      summary = AggregatedDataForResultTrend.fromJson(json['summary']);
    }
    if (json['workItem'] == null) {
      workItem = null;
    } else {
      workItem = WorkItemReference.fromJson(json['workItem']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (summary != null)
      json['summary'] = summary;
    if (workItem != null)
      json['workItem'] = workItem;
    return json;
  }

  static List<TestSummaryForWorkItem> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSummaryForWorkItem>() : json.map((value) => TestSummaryForWorkItem.fromJson(value)).toList();
  }

  static Map<String, TestSummaryForWorkItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSummaryForWorkItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSummaryForWorkItem.fromJson(value));
    }
    return map;
  }
}

