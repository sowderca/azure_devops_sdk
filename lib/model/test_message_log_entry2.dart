part of azure_devops_sdk.api;

class TestMessageLogEntry2 {
  
  DateTime dateCreated = null;
  
  int entryId = null;
  
  String logLevel = null;
  
  String logUser = null;
  
  String message = null;
  
  int testMessageLogId = null;
  TestMessageLogEntry2();

  @override
  String toString() {
    return 'TestMessageLogEntry2[dateCreated=$dateCreated, entryId=$entryId, logLevel=$logLevel, logUser=$logUser, message=$message, testMessageLogId=$testMessageLogId, ]';
  }

  TestMessageLogEntry2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dateCreated'] == null) {
      dateCreated = null;
    } else {
      dateCreated = DateTime.parse(json['dateCreated']);
    }
    if (json['entryId'] == null) {
      entryId = null;
    } else {
          entryId = json['entryId'];
    }
    if (json['logLevel'] == null) {
      logLevel = null;
    } else {
          logLevel = json['logLevel'];
    }
    if (json['logUser'] == null) {
      logUser = null;
    } else {
          logUser = json['logUser'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['testMessageLogId'] == null) {
      testMessageLogId = null;
    } else {
          testMessageLogId = json['testMessageLogId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dateCreated != null)
      json['dateCreated'] = dateCreated == null ? null : dateCreated.toUtc().toIso8601String();
    if (entryId != null)
      json['entryId'] = entryId;
    if (logLevel != null)
      json['logLevel'] = logLevel;
    if (logUser != null)
      json['logUser'] = logUser;
    if (message != null)
      json['message'] = message;
    if (testMessageLogId != null)
      json['testMessageLogId'] = testMessageLogId;
    return json;
  }

  static List<TestMessageLogEntry2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestMessageLogEntry2>() : json.map((value) => TestMessageLogEntry2.fromJson(value)).toList();
  }

  static Map<String, TestMessageLogEntry2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestMessageLogEntry2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestMessageLogEntry2.fromJson(value));
    }
    return map;
  }
}

