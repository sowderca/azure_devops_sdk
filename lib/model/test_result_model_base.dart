part of azure_devops_sdk.api;

class TestResultModelBase {
  /* Comment in result. */
  String comment = null;
  /* Time when execution completed. */
  DateTime completedDate = null;
  /* Duration of execution. */
  double durationInMs = null;
  /* Error message in result. */
  String errorMessage = null;
  /* Test outcome of result. */
  String outcome = null;
  /* Time when execution started. */
  DateTime startedDate = null;
  TestResultModelBase();

  @override
  String toString() {
    return 'TestResultModelBase[comment=$comment, completedDate=$completedDate, durationInMs=$durationInMs, errorMessage=$errorMessage, outcome=$outcome, startedDate=$startedDate, ]';
  }

  TestResultModelBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
      startedDate = DateTime.parse(json['startedDate']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (durationInMs != null)
      json['durationInMs'] = durationInMs;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (outcome != null)
      json['outcome'] = outcome;
    if (startedDate != null)
      json['startedDate'] = startedDate == null ? null : startedDate.toUtc().toIso8601String();
    return json;
  }

  static List<TestResultModelBase> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultModelBase>() : json.map((value) => TestResultModelBase.fromJson(value)).toList();
  }

  static Map<String, TestResultModelBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultModelBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultModelBase.fromJson(value));
    }
    return map;
  }
}

