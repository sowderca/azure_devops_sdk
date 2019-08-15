part of azure_devops_sdk.api;

class QueryTestMessageLogEntryRequest {
  
  String projectName = null;
  
  int testMessageLogId = null;
  
  int testRunId = null;
  QueryTestMessageLogEntryRequest();

  @override
  String toString() {
    return 'QueryTestMessageLogEntryRequest[projectName=$projectName, testMessageLogId=$testMessageLogId, testRunId=$testRunId, ]';
  }

  QueryTestMessageLogEntryRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['testMessageLogId'] == null) {
      testMessageLogId = null;
    } else {
          testMessageLogId = json['testMessageLogId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (testMessageLogId != null)
      json['testMessageLogId'] = testMessageLogId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<QueryTestMessageLogEntryRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryTestMessageLogEntryRequest>() : json.map((value) => QueryTestMessageLogEntryRequest.fromJson(value)).toList();
  }

  static Map<String, QueryTestMessageLogEntryRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryTestMessageLogEntryRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryTestMessageLogEntryRequest.fromJson(value));
    }
    return map;
  }
}

