part of azure_devops_sdk.api;

class ErrorDetails {
  
  DateTime lastErrorDate = null;
  
  String messageText = null;
  
  int occurrences = null;
  
  String request = null;
  
  String scenarioName = null;
  
  String stackTrace = null;
  
  String testCaseName = null;
  ErrorDetails();

  @override
  String toString() {
    return 'ErrorDetails[lastErrorDate=$lastErrorDate, messageText=$messageText, occurrences=$occurrences, request=$request, scenarioName=$scenarioName, stackTrace=$stackTrace, testCaseName=$testCaseName, ]';
  }

  ErrorDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lastErrorDate'] == null) {
      lastErrorDate = null;
    } else {
      lastErrorDate = DateTime.parse(json['lastErrorDate']);
    }
    if (json['messageText'] == null) {
      messageText = null;
    } else {
          messageText = json['messageText'];
    }
    if (json['occurrences'] == null) {
      occurrences = null;
    } else {
          occurrences = json['occurrences'];
    }
    if (json['request'] == null) {
      request = null;
    } else {
          request = json['request'];
    }
    if (json['scenarioName'] == null) {
      scenarioName = null;
    } else {
          scenarioName = json['scenarioName'];
    }
    if (json['stackTrace'] == null) {
      stackTrace = null;
    } else {
          stackTrace = json['stackTrace'];
    }
    if (json['testCaseName'] == null) {
      testCaseName = null;
    } else {
          testCaseName = json['testCaseName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lastErrorDate != null)
      json['lastErrorDate'] = lastErrorDate == null ? null : lastErrorDate.toUtc().toIso8601String();
    if (messageText != null)
      json['messageText'] = messageText;
    if (occurrences != null)
      json['occurrences'] = occurrences;
    if (request != null)
      json['request'] = request;
    if (scenarioName != null)
      json['scenarioName'] = scenarioName;
    if (stackTrace != null)
      json['stackTrace'] = stackTrace;
    if (testCaseName != null)
      json['testCaseName'] = testCaseName;
    return json;
  }

  static List<ErrorDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<ErrorDetails>() : json.map((value) => ErrorDetails.fromJson(value)).toList();
  }

  static Map<String, ErrorDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ErrorDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ErrorDetails.fromJson(value));
    }
    return map;
  }
}

