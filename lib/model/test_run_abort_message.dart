part of azure_devops_sdk.api;

class TestRunAbortMessage {
  
  String action = null;
  
  String cause = null;
  
  List<String> details = [];
  
  DateTime loggedDate = null;
  
  String source = null;
  TestRunAbortMessage();

  @override
  String toString() {
    return 'TestRunAbortMessage[action=$action, cause=$cause, details=$details, loggedDate=$loggedDate, source=$source, ]';
  }

  TestRunAbortMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['action'] == null) {
      action = null;
    } else {
          action = json['action'];
    }
    if (json['cause'] == null) {
      cause = null;
    } else {
          cause = json['cause'];
    }
    if (json['details'] == null) {
      details = null;
    } else {
      details = (json['details'] as List).cast<String>();
    }
    if (json['loggedDate'] == null) {
      loggedDate = null;
    } else {
      loggedDate = DateTime.parse(json['loggedDate']);
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (action != null)
      json['action'] = action;
    if (cause != null)
      json['cause'] = cause;
    if (details != null)
      json['details'] = details;
    if (loggedDate != null)
      json['loggedDate'] = loggedDate == null ? null : loggedDate.toUtc().toIso8601String();
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<TestRunAbortMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunAbortMessage>() : json.map((value) => TestRunAbortMessage.fromJson(value)).toList();
  }

  static Map<String, TestRunAbortMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunAbortMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunAbortMessage.fromJson(value));
    }
    return map;
  }
}

