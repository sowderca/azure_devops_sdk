part of azure_devops_sdk.api;

class ResultUpdateRequestModel {
  
  List<TestActionResultModel> actionResultDeletes = [];
  
  List<TestActionResultModel> actionResults = [];
  
  List<TestResultParameterModel> parameterDeletes = [];
  
  List<TestResultParameterModel> parameters = [];
  
  TestCaseResultUpdateModel testCaseResult = null;
  ResultUpdateRequestModel();

  @override
  String toString() {
    return 'ResultUpdateRequestModel[actionResultDeletes=$actionResultDeletes, actionResults=$actionResults, parameterDeletes=$parameterDeletes, parameters=$parameters, testCaseResult=$testCaseResult, ]';
  }

  ResultUpdateRequestModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionResultDeletes'] == null) {
      actionResultDeletes = null;
    } else {
      actionResultDeletes = TestActionResultModel.listFromJson(json['actionResultDeletes']);
    }
    if (json['actionResults'] == null) {
      actionResults = null;
    } else {
      actionResults = TestActionResultModel.listFromJson(json['actionResults']);
    }
    if (json['parameterDeletes'] == null) {
      parameterDeletes = null;
    } else {
      parameterDeletes = TestResultParameterModel.listFromJson(json['parameterDeletes']);
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
      parameters = TestResultParameterModel.listFromJson(json['parameters']);
    }
    if (json['testCaseResult'] == null) {
      testCaseResult = null;
    } else {
      testCaseResult = TestCaseResultUpdateModel.fromJson(json['testCaseResult']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionResultDeletes != null)
      json['actionResultDeletes'] = actionResultDeletes;
    if (actionResults != null)
      json['actionResults'] = actionResults;
    if (parameterDeletes != null)
      json['parameterDeletes'] = parameterDeletes;
    if (parameters != null)
      json['parameters'] = parameters;
    if (testCaseResult != null)
      json['testCaseResult'] = testCaseResult;
    return json;
  }

  static List<ResultUpdateRequestModel> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultUpdateRequestModel>() : json.map((value) => ResultUpdateRequestModel.fromJson(value)).toList();
  }

  static Map<String, ResultUpdateRequestModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultUpdateRequestModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultUpdateRequestModel.fromJson(value));
    }
    return map;
  }
}

