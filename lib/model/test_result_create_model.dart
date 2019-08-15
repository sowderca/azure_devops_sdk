part of azure_devops_sdk.api;

class TestResultCreateModel {
  
  ShallowReference area = null;
  
  List<int> associatedWorkItems = [];
  
  String automatedTestId = null;
  
  String automatedTestName = null;
  
  String automatedTestStorage = null;
  
  String automatedTestType = null;
  
  String automatedTestTypeId = null;
  
  String comment = null;
  
  String completedDate = null;
  
  String computerName = null;
  
  ShallowReference configuration = null;
  
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
  
  ShallowReference testCase = null;
  
  String testCasePriority = null;
  
  String testCaseTitle = null;
  
  ShallowReference testPoint = null;
  TestResultCreateModel();

  @override
  String toString() {
    return 'TestResultCreateModel[area=$area, associatedWorkItems=$associatedWorkItems, automatedTestId=$automatedTestId, automatedTestName=$automatedTestName, automatedTestStorage=$automatedTestStorage, automatedTestType=$automatedTestType, automatedTestTypeId=$automatedTestTypeId, comment=$comment, completedDate=$completedDate, computerName=$computerName, configuration=$configuration, customFields=$customFields, durationInMs=$durationInMs, errorMessage=$errorMessage, failureType=$failureType, outcome=$outcome, owner=$owner, resolutionState=$resolutionState, runBy=$runBy, stackTrace=$stackTrace, startedDate=$startedDate, state=$state, testCase=$testCase, testCasePriority=$testCasePriority, testCaseTitle=$testCaseTitle, testPoint=$testPoint, ]';
  }

  TestResultCreateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['area'] == null) {
      area = null;
    } else {
      area = ShallowReference.fromJson(json['area']);
    }
    if (json['associatedWorkItems'] == null) {
      associatedWorkItems = null;
    } else {
      associatedWorkItems = (json['associatedWorkItems'] as List).cast<int>();
    }
    if (json['automatedTestId'] == null) {
      automatedTestId = null;
    } else {
          automatedTestId = json['automatedTestId'];
    }
    if (json['automatedTestName'] == null) {
      automatedTestName = null;
    } else {
          automatedTestName = json['automatedTestName'];
    }
    if (json['automatedTestStorage'] == null) {
      automatedTestStorage = null;
    } else {
          automatedTestStorage = json['automatedTestStorage'];
    }
    if (json['automatedTestType'] == null) {
      automatedTestType = null;
    } else {
          automatedTestType = json['automatedTestType'];
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
    if (json['testCase'] == null) {
      testCase = null;
    } else {
      testCase = ShallowReference.fromJson(json['testCase']);
    }
    if (json['testCasePriority'] == null) {
      testCasePriority = null;
    } else {
          testCasePriority = json['testCasePriority'];
    }
    if (json['testCaseTitle'] == null) {
      testCaseTitle = null;
    } else {
          testCaseTitle = json['testCaseTitle'];
    }
    if (json['testPoint'] == null) {
      testPoint = null;
    } else {
      testPoint = ShallowReference.fromJson(json['testPoint']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (area != null)
      json['area'] = area;
    if (associatedWorkItems != null)
      json['associatedWorkItems'] = associatedWorkItems;
    if (automatedTestId != null)
      json['automatedTestId'] = automatedTestId;
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (automatedTestStorage != null)
      json['automatedTestStorage'] = automatedTestStorage;
    if (automatedTestType != null)
      json['automatedTestType'] = automatedTestType;
    if (automatedTestTypeId != null)
      json['automatedTestTypeId'] = automatedTestTypeId;
    if (comment != null)
      json['comment'] = comment;
    if (completedDate != null)
      json['completedDate'] = completedDate;
    if (computerName != null)
      json['computerName'] = computerName;
    if (configuration != null)
      json['configuration'] = configuration;
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
    if (testCase != null)
      json['testCase'] = testCase;
    if (testCasePriority != null)
      json['testCasePriority'] = testCasePriority;
    if (testCaseTitle != null)
      json['testCaseTitle'] = testCaseTitle;
    if (testPoint != null)
      json['testPoint'] = testPoint;
    return json;
  }

  static List<TestResultCreateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultCreateModel>() : json.map((value) => TestResultCreateModel.fromJson(value)).toList();
  }

  static Map<String, TestResultCreateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultCreateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultCreateModel.fromJson(value));
    }
    return map;
  }
}

