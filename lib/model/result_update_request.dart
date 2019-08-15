part of azure_devops_sdk.api;

class ResultUpdateRequest {
  
  List<TestActionResult> actionResultDeletes = [];
  
  List<TestActionResult> actionResults = [];
  
  List<TestResultAttachmentIdentity> attachmentDeletes = [];
  
  List<TestResultAttachment> attachments = [];
  
  List<TestResultParameter> parameterDeletes = [];
  
  List<TestResultParameter> parameters = [];
  
  LegacyTestCaseResult testCaseResult = null;
  
  int testResultId = null;
  
  int testRunId = null;
  ResultUpdateRequest();

  @override
  String toString() {
    return 'ResultUpdateRequest[actionResultDeletes=$actionResultDeletes, actionResults=$actionResults, attachmentDeletes=$attachmentDeletes, attachments=$attachments, parameterDeletes=$parameterDeletes, parameters=$parameters, testCaseResult=$testCaseResult, testResultId=$testResultId, testRunId=$testRunId, ]';
  }

  ResultUpdateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionResultDeletes'] == null) {
      actionResultDeletes = null;
    } else {
      actionResultDeletes = TestActionResult.listFromJson(json['actionResultDeletes']);
    }
    if (json['actionResults'] == null) {
      actionResults = null;
    } else {
      actionResults = TestActionResult.listFromJson(json['actionResults']);
    }
    if (json['attachmentDeletes'] == null) {
      attachmentDeletes = null;
    } else {
      attachmentDeletes = TestResultAttachmentIdentity.listFromJson(json['attachmentDeletes']);
    }
    if (json['attachments'] == null) {
      attachments = null;
    } else {
      attachments = TestResultAttachment.listFromJson(json['attachments']);
    }
    if (json['parameterDeletes'] == null) {
      parameterDeletes = null;
    } else {
      parameterDeletes = TestResultParameter.listFromJson(json['parameterDeletes']);
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
      parameters = TestResultParameter.listFromJson(json['parameters']);
    }
    if (json['testCaseResult'] == null) {
      testCaseResult = null;
    } else {
      testCaseResult = LegacyTestCaseResult.fromJson(json['testCaseResult']);
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
    if (actionResultDeletes != null)
      json['actionResultDeletes'] = actionResultDeletes;
    if (actionResults != null)
      json['actionResults'] = actionResults;
    if (attachmentDeletes != null)
      json['attachmentDeletes'] = attachmentDeletes;
    if (attachments != null)
      json['attachments'] = attachments;
    if (parameterDeletes != null)
      json['parameterDeletes'] = parameterDeletes;
    if (parameters != null)
      json['parameters'] = parameters;
    if (testCaseResult != null)
      json['testCaseResult'] = testCaseResult;
    if (testResultId != null)
      json['testResultId'] = testResultId;
    if (testRunId != null)
      json['testRunId'] = testRunId;
    return json;
  }

  static List<ResultUpdateRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultUpdateRequest>() : json.map((value) => ResultUpdateRequest.fromJson(value)).toList();
  }

  static Map<String, ResultUpdateRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultUpdateRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultUpdateRequest.fromJson(value));
    }
    return map;
  }
}

