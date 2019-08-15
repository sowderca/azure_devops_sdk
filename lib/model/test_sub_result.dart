part of azure_devops_sdk.api;

class TestSubResult {
  /* Comment in sub result. */
  String comment = null;
  /* Time when test execution completed. */
  DateTime completedDate = null;
  /* Machine where test executed. */
  String computerName = null;
  
  ShallowReference configuration = null;
  /* Additional properties of sub result. */
  List<CustomTestField> customFields = [];
  /* Name of sub result. */
  String displayName = null;
  /* Duration of test execution. */
  int durationInMs = null;
  /* Error message in sub result. */
  String errorMessage = null;
  /* ID of sub result. */
  int id = null;
  /* Time when result last updated. */
  DateTime lastUpdatedDate = null;
  /* Outcome of sub result. */
  String outcome = null;
  /* Immediate parent ID of sub result. */
  int parentId = null;
  /* Hierarchy type of the result, default value of None means its leaf node. */
  String resultGroupType = null;
  //enum resultGroupTypeEnum {  none,  rerun,  dataDriven,  orderedTest,  generic,  };{
  /* Index number of sub result. */
  int sequenceId = null;
  /* Stacktrace. */
  String stackTrace = null;
  /* Time when test execution started. */
  DateTime startedDate = null;
  /* List of sub results inside a sub result, if ResultGroupType is not None, it holds corresponding type sub results. */
  List<TestSubResult> subResults = [];
  
  TestCaseResultIdentifier testResult = null;
  /* Url of sub result. */
  String url = null;
  TestSubResult();

  @override
  String toString() {
    return 'TestSubResult[comment=$comment, completedDate=$completedDate, computerName=$computerName, configuration=$configuration, customFields=$customFields, displayName=$displayName, durationInMs=$durationInMs, errorMessage=$errorMessage, id=$id, lastUpdatedDate=$lastUpdatedDate, outcome=$outcome, parentId=$parentId, resultGroupType=$resultGroupType, sequenceId=$sequenceId, stackTrace=$stackTrace, startedDate=$startedDate, subResults=$subResults, testResult=$testResult, url=$url, ]';
  }

  TestSubResult.fromJson(Map<String, dynamic> json) {
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
    if (json['computerName'] == null) {
      computerName = null;
    } else {
          computerName = json['computerName'];
    }
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = ShallowReference.fromJson(json['configuration']);
    }
    if (json['customFields'] == null) {
      customFields = null;
    } else {
      customFields = CustomTestField.listFromJson(json['customFields']);
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['durationInMs'] == null) {
      durationInMs = null;
    } else {
          durationInMs = json['durationInMs'];
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
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['parentId'] == null) {
      parentId = null;
    } else {
          parentId = json['parentId'];
    }
    if (json['resultGroupType'] == null) {
      resultGroupType = null;
    } else {
          resultGroupType = json['resultGroupType'];
    }
    if (json['sequenceId'] == null) {
      sequenceId = null;
    } else {
          sequenceId = json['sequenceId'];
    }
    if (json['stackTrace'] == null) {
      stackTrace = null;
    } else {
          stackTrace = json['stackTrace'];
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
      startedDate = DateTime.parse(json['startedDate']);
    }
    if (json['subResults'] == null) {
      subResults = null;
    } else {
      subResults = TestSubResult.listFromJson(json['subResults']);
    }
    if (json['testResult'] == null) {
      testResult = null;
    } else {
      testResult = TestCaseResultIdentifier.fromJson(json['testResult']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (computerName != null)
      json['computerName'] = computerName;
    if (configuration != null)
      json['configuration'] = configuration;
    if (customFields != null)
      json['customFields'] = customFields;
    if (displayName != null)
      json['displayName'] = displayName;
    if (durationInMs != null)
      json['durationInMs'] = durationInMs;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (id != null)
      json['id'] = id;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (outcome != null)
      json['outcome'] = outcome;
    if (parentId != null)
      json['parentId'] = parentId;
    if (resultGroupType != null)
      json['resultGroupType'] = resultGroupType;
    if (sequenceId != null)
      json['sequenceId'] = sequenceId;
    if (stackTrace != null)
      json['stackTrace'] = stackTrace;
    if (startedDate != null)
      json['startedDate'] = startedDate == null ? null : startedDate.toUtc().toIso8601String();
    if (subResults != null)
      json['subResults'] = subResults;
    if (testResult != null)
      json['testResult'] = testResult;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestSubResult> listFromJson(List<dynamic> json) {
    return json == null ? List<TestSubResult>() : json.map((value) => TestSubResult.fromJson(value)).toList();
  }

  static Map<String, TestSubResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestSubResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestSubResult.fromJson(value));
    }
    return map;
  }
}

