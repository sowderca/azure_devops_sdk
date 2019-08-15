part of azure_devops_sdk.api;

class TestMessageLogEntry {
  
  DateTime dateCreated = null;
  
  int entryId = null;
  
  String logLevel = null;
  
  String logUser = null;
  
  String logUserName = null;
  
  String message = null;
  
  int testMessageLogId = null;
  TestMessageLogEntry();

  @override
  String toString() {
    return 'TestMessageLogEntry[dateCreated=$dateCreated, entryId=$entryId, logLevel=$logLevel, logUser=$logUser, logUserName=$logUserName, message=$message, testMessageLogId=$testMessageLogId, ]';
  }

  TestMessageLogEntry.fromJson(Map<String, dynamic> json) {
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
    if (json['logUserName'] == null) {
      logUserName = null;
    } else {
          logUserName = json['logUserName'];
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
    if (logUserName != null)
      json['logUserName'] = logUserName;
    if (message != null)
      json['message'] = message;
    if (testMessageLogId != null)
      json['testMessageLogId'] = testMessageLogId;
    return json;
  }

  static List<TestMessageLogEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<TestMessageLogEntry>() : json.map((value) => TestMessageLogEntry.fromJson(value)).toList();
  }

  static Map<String, TestMessageLogEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestMessageLogEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestMessageLogEntry.fromJson(value));
    }
    return map;
  }
}

