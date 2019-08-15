part of azure_devops_sdk.api;

class ShallowTestCaseResult {
  
  String automatedTestName = null;
  
  String automatedTestStorage = null;
  
  double durationInMs = null;
  
  int id = null;
  
  bool isReRun = null;
  
  String outcome = null;
  
  String owner = null;
  
  int priority = null;
  
  int refId = null;
  
  int runId = null;
  
  List<String> tags = [];
  
  String testCaseTitle = null;
  ShallowTestCaseResult();

  @override
  String toString() {
    return 'ShallowTestCaseResult[automatedTestName=$automatedTestName, automatedTestStorage=$automatedTestStorage, durationInMs=$durationInMs, id=$id, isReRun=$isReRun, outcome=$outcome, owner=$owner, priority=$priority, refId=$refId, runId=$runId, tags=$tags, testCaseTitle=$testCaseTitle, ]';
  }

  ShallowTestCaseResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['durationInMs'] == null) {
      durationInMs = null;
    } else {
          durationInMs = json['durationInMs'].toDouble();
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isReRun'] == null) {
      isReRun = null;
    } else {
          isReRun = json['isReRun'];
    }
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
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
    if (json['refId'] == null) {
      refId = null;
    } else {
          refId = json['refId'];
    }
    if (json['runId'] == null) {
      runId = null;
    } else {
          runId = json['runId'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
    if (json['testCaseTitle'] == null) {
      testCaseTitle = null;
    } else {
          testCaseTitle = json['testCaseTitle'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automatedTestName != null)
      json['automatedTestName'] = automatedTestName;
    if (automatedTestStorage != null)
      json['automatedTestStorage'] = automatedTestStorage;
    if (durationInMs != null)
      json['durationInMs'] = durationInMs;
    if (id != null)
      json['id'] = id;
    if (isReRun != null)
      json['isReRun'] = isReRun;
    if (outcome != null)
      json['outcome'] = outcome;
    if (owner != null)
      json['owner'] = owner;
    if (priority != null)
      json['priority'] = priority;
    if (refId != null)
      json['refId'] = refId;
    if (runId != null)
      json['runId'] = runId;
    if (tags != null)
      json['tags'] = tags;
    if (testCaseTitle != null)
      json['testCaseTitle'] = testCaseTitle;
    return json;
  }

  static List<ShallowTestCaseResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ShallowTestCaseResult>() : json.map((value) => ShallowTestCaseResult.fromJson(value)).toList();
  }

  static Map<String, ShallowTestCaseResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ShallowTestCaseResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ShallowTestCaseResult.fromJson(value));
    }
    return map;
  }
}

