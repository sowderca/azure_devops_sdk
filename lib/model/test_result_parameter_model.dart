part of azure_devops_sdk.api;

class TestResultParameterModel {
  /* Test step path where parameter is referenced. */
  String actionPath = null;
  /* Iteration ID. */
  int iterationId = null;
  /* Name of parameter. */
  String parameterName = null;
  /* This is step Id of test case. For shared step, it is step Id of shared step in test case workitem; step Id in shared step. Example: TestCase workitem has two steps: 1) Normal step with Id = 1 2) Shared Step with Id = 2. Inside shared step: a) Normal Step with Id = 1 Value for StepIdentifier for First step: \"1\" Second step: \"2;1\" */
  String stepIdentifier = null;
  /* Url of test parameter. */
  String url = null;
  /* Value of parameter. */
  String value = null;
  TestResultParameterModel();

  @override
  String toString() {
    return 'TestResultParameterModel[actionPath=$actionPath, iterationId=$iterationId, parameterName=$parameterName, stepIdentifier=$stepIdentifier, url=$url, value=$value, ]';
  }

  TestResultParameterModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionPath'] == null) {
      actionPath = null;
    } else {
          actionPath = json['actionPath'];
    }
    if (json['iterationId'] == null) {
      iterationId = null;
    } else {
          iterationId = json['iterationId'];
    }
    if (json['parameterName'] == null) {
      parameterName = null;
    } else {
          parameterName = json['parameterName'];
    }
    if (json['stepIdentifier'] == null) {
      stepIdentifier = null;
    } else {
          stepIdentifier = json['stepIdentifier'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionPath != null)
      json['actionPath'] = actionPath;
    if (iterationId != null)
      json['iterationId'] = iterationId;
    if (parameterName != null)
      json['parameterName'] = parameterName;
    if (stepIdentifier != null)
      json['stepIdentifier'] = stepIdentifier;
    if (url != null)
      json['url'] = url;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TestResultParameterModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultParameterModel>() : json.map((value) => TestResultParameterModel.fromJson(value)).toList();
  }

  static Map<String, TestResultParameterModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultParameterModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultParameterModel.fromJson(value));
    }
    return map;
  }
}

