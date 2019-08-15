part of azure_devops_sdk.api;

class CloneTestPlanParams {
  
  CloneOptions cloneOptions = null;
  
  DestinationTestPlanCloneParams destinationTestPlan = null;
  
  SourceTestPlanInfo sourceTestPlan = null;
  CloneTestPlanParams();

  @override
  String toString() {
    return 'CloneTestPlanParams[cloneOptions=$cloneOptions, destinationTestPlan=$destinationTestPlan, sourceTestPlan=$sourceTestPlan, ]';
  }

  CloneTestPlanParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloneOptions'] == null) {
      cloneOptions = null;
    } else {
      cloneOptions = CloneOptions.fromJson(json['cloneOptions']);
    }
    if (json['destinationTestPlan'] == null) {
      destinationTestPlan = null;
    } else {
      destinationTestPlan = DestinationTestPlanCloneParams.fromJson(json['destinationTestPlan']);
    }
    if (json['sourceTestPlan'] == null) {
      sourceTestPlan = null;
    } else {
      sourceTestPlan = SourceTestPlanInfo.fromJson(json['sourceTestPlan']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloneOptions != null)
      json['cloneOptions'] = cloneOptions;
    if (destinationTestPlan != null)
      json['destinationTestPlan'] = destinationTestPlan;
    if (sourceTestPlan != null)
      json['sourceTestPlan'] = sourceTestPlan;
    return json;
  }

  static List<CloneTestPlanParams> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneTestPlanParams>() : json.map((value) => CloneTestPlanParams.fromJson(value)).toList();
  }

  static Map<String, CloneTestPlanParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneTestPlanParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneTestPlanParams.fromJson(value));
    }
    return map;
  }
}

