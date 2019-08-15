part of azure_devops_sdk.api;

class ResultsByQueryResponse {
  
  List<LegacyTestCaseResultIdentifier> excessIds = [];
  
  List<LegacyTestCaseResult> testResults = [];
  ResultsByQueryResponse();

  @override
  String toString() {
    return 'ResultsByQueryResponse[excessIds=$excessIds, testResults=$testResults, ]';
  }

  ResultsByQueryResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['excessIds'] == null) {
      excessIds = null;
    } else {
      excessIds = LegacyTestCaseResultIdentifier.listFromJson(json['excessIds']);
    }
    if (json['testResults'] == null) {
      testResults = null;
    } else {
      testResults = LegacyTestCaseResult.listFromJson(json['testResults']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (excessIds != null)
      json['excessIds'] = excessIds;
    if (testResults != null)
      json['testResults'] = testResults;
    return json;
  }

  static List<ResultsByQueryResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultsByQueryResponse>() : json.map((value) => ResultsByQueryResponse.fromJson(value)).toList();
  }

  static Map<String, ResultsByQueryResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultsByQueryResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultsByQueryResponse.fromJson(value));
    }
    return map;
  }
}

