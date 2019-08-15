part of azure_devops_sdk.api;

class ScenarioSummary {
  
  int maxUserLoad = null;
  
  int minUserLoad = null;
  
  String scenarioName = null;
  ScenarioSummary();

  @override
  String toString() {
    return 'ScenarioSummary[maxUserLoad=$maxUserLoad, minUserLoad=$minUserLoad, scenarioName=$scenarioName, ]';
  }

  ScenarioSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['maxUserLoad'] == null) {
      maxUserLoad = null;
    } else {
          maxUserLoad = json['maxUserLoad'];
    }
    if (json['minUserLoad'] == null) {
      minUserLoad = null;
    } else {
          minUserLoad = json['minUserLoad'];
    }
    if (json['scenarioName'] == null) {
      scenarioName = null;
    } else {
          scenarioName = json['scenarioName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (maxUserLoad != null)
      json['maxUserLoad'] = maxUserLoad;
    if (minUserLoad != null)
      json['minUserLoad'] = minUserLoad;
    if (scenarioName != null)
      json['scenarioName'] = scenarioName;
    return json;
  }

  static List<ScenarioSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<ScenarioSummary>() : json.map((value) => ScenarioSummary.fromJson(value)).toList();
  }

  static Map<String, ScenarioSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ScenarioSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ScenarioSummary.fromJson(value));
    }
    return map;
  }
}

