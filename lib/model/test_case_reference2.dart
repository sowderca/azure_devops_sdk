part of azure_devops_sdk.api;

class TestCaseReference2 {
  
  int areaId = null;
  
  String automatedTestId = null;
  
  String automatedTestName = null;
  
  List<String> automatedTestNameHash = [];
  
  String automatedTestStorage = null;
  
  List<String> automatedTestStorageHash = [];
  
  String automatedTestType = null;
  
  int configurationId = null;
  
  String createdBy = null;
  
  DateTime creationDate = null;
  
  DateTime lastRefTestRunDate = null;
  
  String owner = null;
  
  String priority = null;
  
  String projectId = null;
  
  int testCaseId = null;
  
  int testCaseRefId = null;
  
  int testCaseRevision = null;
  
  String testCaseTitle = null;
  
  int testPointId = null;
  TestCaseReference2();

  @override
  String toString() {
    return 'TestCaseReference2[areaId=$areaId, automatedTestId=$automatedTestId, automatedTestName=$automatedTestName, automatedTestNameHash=$automatedTestNameHash, automatedTestStorage=$automatedTestStorage, automatedTestStorageHash=$automatedTestStorageHash, automatedTestType=$automatedTestType, configurationId=$configurationId, createdBy=$createdBy, creationDate=$creationDate, lastRefTestRunDate=$lastRefTestRunDate, owner=$owner, priority=$priority, projectId=$projectId, testCaseId=$testCaseId, testCaseRefId=$testCaseRefId, testCaseRevision=$testCaseRevision, testCaseTitle=$testCaseTitle, testPointId=$testPointId, ]';
  }

  TestCaseReference2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['areaId'] == null) {
      areaId = null;
    } else {
          areaId = json['areaId'];
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
    if (json['automatedTestNameHash'] == null) {
      automatedTestNameHash = null;
    } else {
      automatedTestNameHash = (json['automatedTestNameHash'] as List).cast<String>();
    }
    if (json['automatedTestStorage'] == null) {
      automatedTestStorage = null;
    } else {
          automatedTestStorage = json['automatedTestStorage'];
    }
    if (json['automatedTestStorageHash'] == null) {
      automatedTestStorageHash = null;
    } else {
      automatedTestStorageHash = (json['automatedTestStorageHash'] as List).cast<String>();
    }
    if (json['automatedTestType'] == null) {
      automatedTestType = null;
    } else {
          automatedTestType = json['automatedTestType'];
    }
    if (json['configurationId'] == null) {
      configurationId = null;
    } else {
          configurationId = json['configurationId'];
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
          createdBy = json['createdBy'];
    }
    if (json['creationDate'] == null) {
      creationDate = null;
    } else {
      creationDate = DateTime.parse(json['creationDate']);
    }
    if (json['lastRefTestRunDate'] == null) {
      lastRefTestRunDate = null;
    } else {
      lastRefTestRunDate = DateTime.parse(json['lastRefTestRunDate']);
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['priority'] == null) {
      priority = null;
    } else {
          priority = json['priority'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['testCaseId'] == null) {
      testCaseId = null;
    } else {
          testCaseId = json['testCaseId'];
    }
    if (json['testCaseRefId'] == null) {
      testCaseRefId = null;
    } else {
          testCaseRefId = json['testCaseRefId'];
    }
    if (json['testCaseRevision'] == null) {
      testCaseRevision = null;
    } else {
          testCaseRevision = json['testCaseRevision'];
    }
    if (json['testCaseTitle'] == null) {
      testCaseTitle = null;
    } else {
          testCaseTitle = json['testCaseTitle'];
    }
    if (json['testPointId'] == null) {
      testPointId = null;
    } else {
          testPointId = json['testPointId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (areaId != null)
      json['areaId'] = areaId;
    if (automatedTestId != null)
      json['automatedTestId'] = automatedTestId;
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (automatedTestNameHash != null)
      json['automatedTestNameHash'] = automatedTestNameHash;
    if (automatedTestStorage != null)
      json['automatedTestStorage'] = automatedTestStorage;
    if (automatedTestStorageHash != null)
      json['automatedTestStorageHash'] = automatedTestStorageHash;
    if (automatedTestType != null)
      json['automatedTestType'] = automatedTestType;
    if (configurationId != null)
      json['configurationId'] = configurationId;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (creationDate != null)
      json['creationDate'] = creationDate == null ? null : creationDate.toUtc().toIso8601String();
    if (lastRefTestRunDate != null)
      json['lastRefTestRunDate'] = lastRefTestRunDate == null ? null : lastRefTestRunDate.toUtc().toIso8601String();
    if (owner != null)
      json['owner'] = owner;
    if (priority != null)
      json['priority'] = priority;
    if (projectId != null)
      json['projectId'] = projectId;
    if (testCaseId != null)
      json['testCaseId'] = testCaseId;
    if (testCaseRefId != null)
      json['testCaseRefId'] = testCaseRefId;
    if (testCaseRevision != null)
      json['testCaseRevision'] = testCaseRevision;
    if (testCaseTitle != null)
      json['testCaseTitle'] = testCaseTitle;
    if (testPointId != null)
      json['testPointId'] = testPointId;
    return json;
  }

  static List<TestCaseReference2> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseReference2>() : json.map((value) => TestCaseReference2.fromJson(value)).toList();
  }

  static Map<String, TestCaseReference2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseReference2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseReference2.fromJson(value));
    }
    return map;
  }
}

