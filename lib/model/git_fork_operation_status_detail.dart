part of azure_devops_sdk.api;

class GitForkOperationStatusDetail {
  /* All valid steps for the forking process */
  List<String> allSteps = [];
  /* Index into AllSteps for the current step */
  int currentStep = null;
  /* Error message if the operation failed. */
  String errorMessage = null;
  GitForkOperationStatusDetail();

  @override
  String toString() {
    return 'GitForkOperationStatusDetail[allSteps=$allSteps, currentStep=$currentStep, errorMessage=$errorMessage, ]';
  }

  GitForkOperationStatusDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allSteps'] == null) {
      allSteps = null;
    } else {
      allSteps = (json['allSteps'] as List).cast<String>();
    }
    if (json['currentStep'] == null) {
      currentStep = null;
    } else {
          currentStep = json['currentStep'];
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allSteps != null)
      json['allSteps'] = allSteps;
    if (currentStep != null)
      json['currentStep'] = currentStep;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    return json;
  }

  static List<GitForkOperationStatusDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<GitForkOperationStatusDetail>() : json.map((value) => GitForkOperationStatusDetail.fromJson(value)).toList();
  }

  static Map<String, GitForkOperationStatusDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitForkOperationStatusDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitForkOperationStatusDetail.fromJson(value));
    }
    return map;
  }
}

