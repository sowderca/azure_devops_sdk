part of azure_devops_sdk.api;

class TestPlanCreateParams {
  /* Area of the test plan. */
  String areaPath = null;
  
  BuildDefinitionReference buildDefinition = null;
  /* Build to be tested. */
  int buildId = null;
  /* Description of the test plan. */
  String description = null;
  /* End date for the test plan. */
  DateTime endDate = null;
  /* Iteration path of the test plan. */
  String iteration = null;
  /* Name of the test plan. */
  String name = null;
  
  IdentityRef owner = null;
  
  ReleaseEnvironmentDefinitionReference releaseEnvironmentDefinition = null;
  /* Start date for the test plan. */
  DateTime startDate = null;
  /* State of the test plan. */
  String state = null;
  
  TestOutcomeSettings testOutcomeSettings = null;
  TestPlanCreateParams();

  @override
  String toString() {
    return 'TestPlanCreateParams[areaPath=$areaPath, buildDefinition=$buildDefinition, buildId=$buildId, description=$description, endDate=$endDate, iteration=$iteration, name=$name, owner=$owner, releaseEnvironmentDefinition=$releaseEnvironmentDefinition, startDate=$startDate, state=$state, testOutcomeSettings=$testOutcomeSettings, ]';
  }

  TestPlanCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['areaPath'] == null) {
      areaPath = null;
    } else {
          areaPath = json['areaPath'];
    }
    if (json['buildDefinition'] == null) {
      buildDefinition = null;
    } else {
      buildDefinition = BuildDefinitionReference.fromJson(json['buildDefinition']);
    }
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['endDate'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['endDate']);
    }
    if (json['iteration'] == null) {
      iteration = null;
    } else {
          iteration = json['iteration'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
      owner = IdentityRef.fromJson(json['owner']);
    }
    if (json['releaseEnvironmentDefinition'] == null) {
      releaseEnvironmentDefinition = null;
    } else {
      releaseEnvironmentDefinition = ReleaseEnvironmentDefinitionReference.fromJson(json['releaseEnvironmentDefinition']);
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['testOutcomeSettings'] == null) {
      testOutcomeSettings = null;
    } else {
      testOutcomeSettings = TestOutcomeSettings.fromJson(json['testOutcomeSettings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (areaPath != null)
      json['areaPath'] = areaPath;
    if (buildDefinition != null)
      json['buildDefinition'] = buildDefinition;
    if (buildId != null)
      json['buildId'] = buildId;
    if (description != null)
      json['description'] = description;
    if (endDate != null)
      json['endDate'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (iteration != null)
      json['iteration'] = iteration;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (releaseEnvironmentDefinition != null)
      json['releaseEnvironmentDefinition'] = releaseEnvironmentDefinition;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (testOutcomeSettings != null)
      json['testOutcomeSettings'] = testOutcomeSettings;
    return json;
  }

  static List<TestPlanCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlanCreateParams>() : json.map((value) => TestPlanCreateParams.fromJson(value)).toList();
  }

  static Map<String, TestPlanCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlanCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlanCreateParams.fromJson(value));
    }
    return map;
  }
}

