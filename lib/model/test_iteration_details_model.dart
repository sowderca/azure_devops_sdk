part of azure_devops_sdk.api;

class TestIterationDetailsModel {
  /* Test step results in an iteration. */
  List<TestActionResultModel> actionResults = [];
  /* Reference to attachments in test iteration result. */
  List<TestCaseResultAttachmentModel> attachments = [];
  /* Comment in test iteration result. */
  String comment = null;
  /* Time when execution completed. */
  DateTime completedDate = null;
  /* Duration of execution. */
  double durationInMs = null;
  /* Error message in test iteration result execution. */
  String errorMessage = null;
  /* ID of test iteration result. */
  int id = null;
  /* Test outcome if test iteration result. */
  String outcome = null;
  /* Test parameters in an iteration. */
  List<TestResultParameterModel> parameters = [];
  /* Time when execution started. */
  DateTime startedDate = null;
  /* Url to test iteration result. */
  String url = null;
  TestIterationDetailsModel();

  @override
  String toString() {
    return 'TestIterationDetailsModel[actionResults=$actionResults, attachments=$attachments, comment=$comment, completedDate=$completedDate, durationInMs=$durationInMs, errorMessage=$errorMessage, id=$id, outcome=$outcome, parameters=$parameters, startedDate=$startedDate, url=$url, ]';
  }

  TestIterationDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionResults'] == null) {
      actionResults = null;
    } else {
      actionResults = TestActionResultModel.listFromJson(json['actionResults']);
    }
    if (json['attachments'] == null) {
      attachments = null;
    } else {
      attachments = TestCaseResultAttachmentModel.listFromJson(json['attachments']);
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
      completedDate = DateTime.parse(json['completedDate']);
    }
    if (json['durationInMs'] == null) {
      durationInMs = null;
    } else {
          durationInMs = json['durationInMs'].toDouble();
    }
    if (json['errorMessage'] == null) {
      errorMessage = null;
    } else {
          errorMessage = json['errorMessage'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
      parameters = TestResultParameterModel.listFromJson(json['parameters']);
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
      startedDate = DateTime.parse(json['startedDate']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionResults != null)
      json['actionResults'] = actionResults;
    if (attachments != null)
      json['attachments'] = attachments;
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (durationInMs != null)
      json['durationInMs'] = durationInMs;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (id != null)
      json['id'] = id;
    if (outcome != null)
      json['outcome'] = outcome;
    if (parameters != null)
      json['parameters'] = parameters;
    if (startedDate != null)
      json['startedDate'] = startedDate == null ? null : startedDate.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestIterationDetailsModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestIterationDetailsModel>() : json.map((value) => TestIterationDetailsModel.fromJson(value)).toList();
  }

  static Map<String, TestIterationDetailsModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestIterationDetailsModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestIterationDetailsModel.fromJson(value));
    }
    return map;
  }
}

