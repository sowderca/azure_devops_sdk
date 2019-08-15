part of azure_devops_sdk.api;

class CloneTestPlanOperationInformation {
  
  CloneOperationCommonResponse cloneOperationResponse = null;
  
  CloneOptions cloneOptions = null;
  
  TestPlan destinationTestPlan = null;
  
  SourceTestplanResponse sourceTestPlan = null;
  CloneTestPlanOperationInformation();

  @override
  String toString() {
    return 'CloneTestPlanOperationInformation[cloneOperationResponse=$cloneOperationResponse, cloneOptions=$cloneOptions, destinationTestPlan=$destinationTestPlan, sourceTestPlan=$sourceTestPlan, ]';
  }

  CloneTestPlanOperationInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloneOperationResponse'] == null) {
      cloneOperationResponse = null;
    } else {
      cloneOperationResponse = CloneOperationCommonResponse.fromJson(json['cloneOperationResponse']);
    }
    if (json['cloneOptions'] == null) {
      cloneOptions = null;
    } else {
      cloneOptions = CloneOptions.fromJson(json['cloneOptions']);
    }
    if (json['destinationTestPlan'] == null) {
      destinationTestPlan = null;
    } else {
      destinationTestPlan = TestPlan.fromJson(json['destinationTestPlan']);
    }
    if (json['sourceTestPlan'] == null) {
      sourceTestPlan = null;
    } else {
      sourceTestPlan = SourceTestplanResponse.fromJson(json['sourceTestPlan']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloneOperationResponse != null)
      json['cloneOperationResponse'] = cloneOperationResponse;
    if (cloneOptions != null)
      json['cloneOptions'] = cloneOptions;
    if (destinationTestPlan != null)
      json['destinationTestPlan'] = destinationTestPlan;
    if (sourceTestPlan != null)
      json['sourceTestPlan'] = sourceTestPlan;
    return json;
  }

  static List<CloneTestPlanOperationInformation> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneTestPlanOperationInformation>() : json.map((value) => CloneTestPlanOperationInformation.fromJson(value)).toList();
  }

  static Map<String, CloneTestPlanOperationInformation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneTestPlanOperationInformation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneTestPlanOperationInformation.fromJson(value));
    }
    return map;
  }
}

