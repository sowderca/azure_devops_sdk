part of azure_devops_sdk.api;

class TestAuthoringDetails {
  
  int configurationId = null;
  
  bool isAutomated = null;
  
  DateTime lastUpdated = null;
  
  int pointId = null;
  
  String priority = null;
  
  String runBy = null;
  
  String state = null;
  //enum stateEnum {  none,  ready,  completed,  notReady,  inProgress,  maxValue,  };{
  
  int suiteId = null;
  
  String testerId = null;
  TestAuthoringDetails();

  @override
  String toString() {
    return 'TestAuthoringDetails[configurationId=$configurationId, isAutomated=$isAutomated, lastUpdated=$lastUpdated, pointId=$pointId, priority=$priority, runBy=$runBy, state=$state, suiteId=$suiteId, testerId=$testerId, ]';
  }

  TestAuthoringDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configurationId'] == null) {
      configurationId = null;
    } else {
          configurationId = json['configurationId'];
    }
    if (json['isAutomated'] == null) {
      isAutomated = null;
    } else {
          isAutomated = json['isAutomated'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['pointId'] == null) {
      pointId = null;
    } else {
          pointId = json['pointId'];
    }
    if (json['priority'] == null) {
      priority = null;
    } else {
          priority = json['priority'];
    }
    if (json['runBy'] == null) {
      runBy = null;
    } else {
          runBy = json['runBy'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['suiteId'] == null) {
      suiteId = null;
    } else {
          suiteId = json['suiteId'];
    }
    if (json['testerId'] == null) {
      testerId = null;
    } else {
          testerId = json['testerId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configurationId != null)
      json['configurationId'] = configurationId;
    if (isAutomated != null)
      json['isAutomated'] = isAutomated;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (pointId != null)
      json['pointId'] = pointId;
    if (priority != null)
      json['priority'] = priority;
    if (runBy != null)
      json['runBy'] = runBy;
    if (state != null)
      json['state'] = state;
    if (suiteId != null)
      json['suiteId'] = suiteId;
    if (testerId != null)
      json['testerId'] = testerId;
    return json;
  }

  static List<TestAuthoringDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TestAuthoringDetails>() : json.map((value) => TestAuthoringDetails.fromJson(value)).toList();
  }

  static Map<String, TestAuthoringDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestAuthoringDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestAuthoringDetails.fromJson(value));
    }
    return map;
  }
}

