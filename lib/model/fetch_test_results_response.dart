part of azure_devops_sdk.api;

class FetchTestResultsResponse {
  
  List<TestActionResult> actionResults = [];
  
  List<TestResultAttachment> attachments = [];
  
  List<LegacyTestCaseResultIdentifier> deletedIds = [];
  
  List<LegacyTestCaseResult> results = [];
  
  List<TestResultParameter> testParameters = [];
  FetchTestResultsResponse();

  @override
  String toString() {
    return 'FetchTestResultsResponse[actionResults=$actionResults, attachments=$attachments, deletedIds=$deletedIds, results=$results, testParameters=$testParameters, ]';
  }

  FetchTestResultsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionResults'] == null) {
      actionResults = null;
    } else {
      actionResults = TestActionResult.listFromJson(json['actionResults']);
    }
    if (json['attachments'] == null) {
      attachments = null;
    } else {
      attachments = TestResultAttachment.listFromJson(json['attachments']);
    }
    if (json['deletedIds'] == null) {
      deletedIds = null;
    } else {
      deletedIds = LegacyTestCaseResultIdentifier.listFromJson(json['deletedIds']);
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = LegacyTestCaseResult.listFromJson(json['results']);
    }
    if (json['testParameters'] == null) {
      testParameters = null;
    } else {
      testParameters = TestResultParameter.listFromJson(json['testParameters']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionResults != null)
      json['actionResults'] = actionResults;
    if (attachments != null)
      json['attachments'] = attachments;
    if (deletedIds != null)
      json['deletedIds'] = deletedIds;
    if (results != null)
      json['results'] = results;
    if (testParameters != null)
      json['testParameters'] = testParameters;
    return json;
  }

  static List<FetchTestResultsResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<FetchTestResultsResponse>() : json.map((value) => FetchTestResultsResponse.fromJson(value)).toList();
  }

  static Map<String, FetchTestResultsResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FetchTestResultsResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FetchTestResultsResponse.fromJson(value));
    }
    return map;
  }
}

