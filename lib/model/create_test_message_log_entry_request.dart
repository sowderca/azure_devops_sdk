part of azure_devops_sdk.api;

class CreateTestMessageLogEntryRequest {
  
  String projectName = null;
  
  List<TestMessageLogEntry> testMessageLogEntry = [];
  
  int testRunId = null;
  CreateTestMessageLogEntryRequest();

  @override
  String toString() {
    return 'CreateTestMessageLogEntryRequest[projectName=$projectName, testMessageLogEntry=$testMessageLogEntry, testRunId=$testRunId, ]';
  }

  CreateTestMessageLogEntryRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['testMessageLogEntry'] == null) {
      testMessageLogEntry = null;
    } else {
      testMessageLogEntry = TestMessageLogEntry.listFromJson(json['testMessageLogEntry']);
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
    if (testMessageLogEntry != null)
      json['testMessageLogEntry'] = testMessageLogEntry;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<CreateTestMessageLogEntryRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateTestMessageLogEntryRequest>() : json.map((value) => CreateTestMessageLogEntryRequest.fromJson(value)).toList();
  }

  static Map<String, CreateTestMessageLogEntryRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateTestMessageLogEntryRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateTestMessageLogEntryRequest.fromJson(value));
    }
    return map;
  }
}

