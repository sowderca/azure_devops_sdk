part of azure_devops_sdk.api;

class TestRunMessage {
  /* Agent Id */
  String agentId = null;
  
  String errorCode = null;
  
  DateTime loggedDate = null;
  
  String message = null;
  /* Message Id */
  String messageId = null;
  
  String messageSource = null;
  //enum messageSourceEnum {  setupScript,  cleanupScript,  validation,  other,  autCounterCollection,  };{
  
  String messageType = null;
  //enum messageTypeEnum {  info,  output,  error,  warning,  critical,  };{
  /* Id of the test run */
  String testRunId = null;
  
  String url = null;
  TestRunMessage();

  @override
  String toString() {
    return 'TestRunMessage[agentId=$agentId, errorCode=$errorCode, loggedDate=$loggedDate, message=$message, messageId=$messageId, messageSource=$messageSource, messageType=$messageType, testRunId=$testRunId, url=$url, ]';
  }

  TestRunMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentId'] == null) {
      agentId = null;
    } else {
          agentId = json['agentId'];
    }
    if (json['errorCode'] == null) {
      errorCode = null;
    } else {
          errorCode = json['errorCode'];
    }
    if (json['loggedDate'] == null) {
      loggedDate = null;
    } else {
      loggedDate = DateTime.parse(json['loggedDate']);
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['messageId'] == null) {
      messageId = null;
    } else {
          messageId = json['messageId'];
    }
    if (json['messageSource'] == null) {
      messageSource = null;
    } else {
          messageSource = json['messageSource'];
    }
    if (json['messageType'] == null) {
      messageType = null;
    } else {
          messageType = json['messageType'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentId != null)
      json['agentId'] = agentId;
    if (errorCode != null)
      json['errorCode'] = errorCode;
    if (loggedDate != null)
      json['loggedDate'] = loggedDate == null ? null : loggedDate.toUtc().toIso8601String();
    if (message != null)
      json['message'] = message;
    if (messageId != null)
      json['messageId'] = messageId;
    if (messageSource != null)
      json['messageSource'] = messageSource;
    if (messageType != null)
      json['messageType'] = messageType;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestRunMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<TestRunMessage>() : json.map((value) => TestRunMessage.fromJson(value)).toList();
  }

  static Map<String, TestRunMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestRunMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestRunMessage.fromJson(value));
    }
    return map;
  }
}

