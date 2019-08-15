part of azure_devops_sdk.api;

class QueryTestActionResultResponse {
  
  List<TestActionResult> testActionResults = [];
  
  List<TestResultAttachment> testAttachments = [];
  
  List<TestResultParameter> testResultParameters = [];
  QueryTestActionResultResponse();

  @override
  String toString() {
    return 'QueryTestActionResultResponse[testActionResults=$testActionResults, testAttachments=$testAttachments, testResultParameters=$testResultParameters, ]';
  }

  QueryTestActionResultResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['testActionResults'] == null) {
      testActionResults = null;
    } else {
      testActionResults = TestActionResult.listFromJson(json['testActionResults']);
    }
    if (json['testAttachments'] == null) {
      testAttachments = null;
    } else {
      testAttachments = TestResultAttachment.listFromJson(json['testAttachments']);
    }
    if (json['testResultParameters'] == null) {
      testResultParameters = null;
    } else {
      testResultParameters = TestResultParameter.listFromJson(json['testResultParameters']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (testActionResults != null)
      json['testActionResults'] = testActionResults;
    if (testAttachments != null)
      json['testAttachments'] = testAttachments;
    if (testResultParameters != null)
      json['testResultParameters'] = testResultParameters;
    return json;
  }

  static List<QueryTestActionResultResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<QueryTestActionResultResponse>() : json.map((value) => QueryTestActionResultResponse.fromJson(value)).toList();
  }

  static Map<String, QueryTestActionResultResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, QueryTestActionResultResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = QueryTestActionResultResponse.fromJson(value));
    }
    return map;
  }
}

