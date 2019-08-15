part of azure_devops_sdk.api;

class TestResultAttachmentIdentity {
  
  int attachmentId = null;
  
  int sessionId = null;
  
  int testResultId = null;
  
  int testRunId = null;
  TestResultAttachmentIdentity();

  @override
  String toString() {
    return 'TestResultAttachmentIdentity[attachmentId=$attachmentId, sessionId=$sessionId, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  TestResultAttachmentIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachmentId'] == null) {
      attachmentId = null;
    } else {
          attachmentId = json['attachmentId'];
    }
    if (json['sessionId'] == null) {
      sessionId = null;
    } else {
          sessionId = json['sessionId'];
    }
    if (json['testResultId'] == null) {
      testResultId = null;
    } else {
          testResultId = json['testResultId'];
    }
    if (json['testRunId'] == null) {
      testRunId = null;
    } else {
          testRunId = json['testRunId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachmentId != null)
      json['attachmentId'] = attachmentId;
    if (sessionId != null)
      json['sessionId'] = sessionId;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<TestResultAttachmentIdentity> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultAttachmentIdentity>() : json.map((value) => TestResultAttachmentIdentity.fromJson(value)).toList();
  }

  static Map<String, TestResultAttachmentIdentity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultAttachmentIdentity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultAttachmentIdentity.fromJson(value));
    }
    return map;
  }
}

