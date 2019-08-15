part of azure_devops_sdk.api;

class PlanUpdateModel {
  
  ShallowReference area = null;
  
  ShallowReference build = null;
  
  ShallowReference buildDefinition = null;
  /* IDs of configurations to be applied when new test suites and test cases are added to the test plan. */
  List<int> configurationIds = [];
  /* Description of the test plan. */
  String description = null;
  /* End date for the test plan. */
  String endDate = null;
  /* Iteration path assigned to the test plan. This indicates when the target iteration by which the testing in this plan is supposed to be complete and the product is ready to be released. */
  String iteration = null;
  /* Name of the test plan. */
  String name = null;
  
  IdentityRef owner = null;
  
  ReleaseEnvironmentDefinitionReference releaseEnvironmentDefinition = null;
  /* Start date for the test plan. */
  String startDate = null;
  /* State of the test plan. */
  String state = null;
  
  TestOutcomeSettings testOutcomeSettings = null;
  PlanUpdateModel();

  @override
  String toString() {
    return 'PlanUpdateModel[area=$area, build=$build, buildDefinition=$buildDefinition, configurationIds=$configurationIds, description=$description, endDate=$endDate, iteration=$iteration, name=$name, owner=$owner, releaseEnvironmentDefinition=$releaseEnvironmentDefinition, startDate=$startDate, state=$state, testOutcomeSettings=$testOutcomeSettings, ]';
  }

  PlanUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['area'] == null) {
      area = null;
    } else {
      area = ShallowReference.fromJson(json['area']);
    }
    if (json['build'] == null) {
      build = null;
    } else {
      build = ShallowReference.fromJson(json['build']);
    }
    if (json['buildDefinition'] == null) {
      buildDefinition = null;
    } else {
      buildDefinition = ShallowReference.fromJson(json['buildDefinition']);
    }
    if (json['configurationIds'] == null) {
      configurationIds = null;
    } else {
      configurationIds = (json['configurationIds'] as List).cast<int>();
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['endDate'] == null) {
      endDate = null;
    } else {
          endDate = json['endDate'];
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
          startDate = json['startDate'];
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
    if (area != null)
      json['area'] = area;
    if (build != null)
      json['build'] = build;
    if (buildDefinition != null)
      json['buildDefinition'] = buildDefinition;
    if (configurationIds != null)
      json['configurationIds'] = configurationIds;
    if (description != null)
      json['description'] = description;
    if (endDate != null)
      json['endDate'] = endDate;
    if (iteration != null)
      json['iteration'] = iteration;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (releaseEnvironmentDefinition != null)
      json['releaseEnvironmentDefinition'] = releaseEnvironmentDefinition;
    if (startDate != null)
      json['startDate'] = startDate;
    if (state != null)
      json['state'] = state;
    if (testOutcomeSettings != null)
      json['testOutcomeSettings'] = testOutcomeSettings;
    return json;
  }

  static List<PlanUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<PlanUpdateModel>() : json.map((value) => PlanUpdateModel.fromJson(value)).toList();
  }

  static Map<String, PlanUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlanUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlanUpdateModel.fromJson(value));
    }
    return map;
  }
}

