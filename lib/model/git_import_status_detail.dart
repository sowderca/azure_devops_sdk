part of azure_devops_sdk.api;

class GitImportStatusDetail {
  /* All valid steps for the import process */
  List<String> allSteps = [];
  /* Index into AllSteps for the current step */
  int currentStep = null;
  /* Error message if the operation failed. */
  String errorMessage = null;
  GitImportStatusDetail();

  @override
  String toString() {
    return 'GitImportStatusDetail[allSteps=$allSteps, currentStep=$currentStep, errorMessage=$errorMessage, ]';
  }

  GitImportStatusDetail.fromJson(Map<String, dynamic> json) {
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

  static List<GitImportStatusDetail> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportStatusDetail>() : json.map((value) => GitImportStatusDetail.fromJson(value)).toList();
  }

  static Map<String, GitImportStatusDetail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportStatusDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportStatusDetail.fromJson(value));
    }
    return map;
  }
}

