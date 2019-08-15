part of azure_devops_sdk.api;

class TestCaseResultUpdateModel {
  
  List<int> associatedWorkItems = [];
  
  String automatedTestTypeId = null;
  
  String comment = null;
  
  String completedDate = null;
  
  String computerName = null;
  
  List<CustomTestField> customFields = [];
  
  String durationInMs = null;
  
  String errorMessage = null;
  
  String failureType = null;
  
  String outcome = null;
  
  IdentityRef owner = null;
  
  String resolutionState = null;
  
  IdentityRef runBy = null;
  
  String stackTrace = null;
  
  String startedDate = null;
  
  String state = null;
  
  String testCasePriority = null;
  
  ShallowReference testResult = null;
  TestCaseResultUpdateModel();

  @override
  String toString() {
    return 'TestCaseResultUpdateModel[associatedWorkItems=$associatedWorkItems, automatedTestTypeId=$automatedTestTypeId, comment=$comment, completedDate=$completedDate, computerName=$computerName, customFields=$customFields, durationInMs=$durationInMs, errorMessage=$errorMessage, failureType=$failureType, outcome=$outcome, owner=$owner, resolutionState=$resolutionState, runBy=$runBy, stackTrace=$stackTrace, startedDate=$startedDate, state=$state, testCasePriority=$testCasePriority, testResult=$testResult, ]';
  }

  TestCaseResultUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['associatedWorkItems'] == null) {
      associatedWorkItems = null;
    } else {
      associatedWorkItems = (json['associatedWorkItems'] as List).cast<int>();
    }
    if (json['automatedTestTypeId'] == null) {
      automatedTestTypeId = null;
    } else {
          automatedTestTypeId = json['automatedTestTypeId'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
          completedDate = json['completedDate'];
    }
    if (json['computerName'] == null) {
      computerName = null;
    } else {
          computerName = json['computerName'];
    }
    if (json['customFields'] == null) {
      customFields = null;
    } else {
      customFields = CustomTestField.listFromJson(json['customFields']);
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
    if (json['failureType'] == null) {
      failureType = null;
    } else {
          failureType = json['failureType'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
    }
    if (json['resolutionState'] == null) {
      resolutionState = null;
    } else {
          resolutionState = json['resolutionState'];
    }
    if (json['runBy'] == null) {
      runBy = null;
    } else {
      runBy = IdentityRef.fromJson(json['runBy']);
    }
    if (json['stackTrace'] == null) {
      stackTrace = null;
    } else {
          stackTrace = json['stackTrace'];
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
          startedDate = json['startedDate'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['testCasePriority'] == null) {
      testCasePriority = null;
    } else {
          testCasePriority = json['testCasePriority'];
    }
    if (json['testResult'] == null) {
      testResult = null;
    } else {
      testResult = ShallowReference.fromJson(json['testResult']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (associatedWorkItems != null)
      json['associatedWorkItems'] = associatedWorkItems;
    if (automatedTestTypeId != null)
      json['automatedTestTypeId'] = automatedTestTypeId;
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate;
    if (computerName != null)
      json['computerName'] = computerName;
    if (customFields != null)
      json['customFields'] = customFields;
    if (durationInMs != null)
      json['durationInMs'] = durationInMs;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    if (failureType != null)
      json['failureType'] = failureType;
    if (outcome != null)
      json['outcome'] = outcome;
    if (owner != null)
      json['owner'] = owner;
    if (resolutionState != null)
      json['resolutionState'] = resolutionState;
    if (runBy != null)
      json['runBy'] = runBy;
    if (stackTrace != null)
      json['stackTrace'] = stackTrace;
    if (startedDate != null)
      json['startedDate'] = startedDate;
    if (state != null)
      json['state'] = state;
    if (testCasePriority != null)
      json['testCasePriority'] = testCasePriority;
    if (testResult != null)
      json['testResult'] = testResult;
    return json;
  }

  static List<TestCaseResultUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseResultUpdateModel>() : json.map((value) => TestCaseResultUpdateModel.fromJson(value)).toList();
  }

  static Map<String, TestCaseResultUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseResultUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseResultUpdateModel.fromJson(value));
    }
    return map;
  }
}

