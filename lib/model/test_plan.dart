part of azure_devops_sdk.api;

class TestPlan {
  
  ShallowReference area = null;
  
  ShallowReference build = null;
  
  ShallowReference buildDefinition = null;
  /* Description of the test plan. */
  String description = null;
  /* End date for the test plan. */
  DateTime endDate = null;
  /* ID of the test plan. */
  int id = null;
  /* Iteration path of the test plan. */
  String iteration = null;
  /* Name of the test plan. */
  String name = null;
  
  IdentityRef owner = null;
  
  ShallowReference previousBuild = null;
  
  ShallowReference project = null;
  
  ReleaseEnvironmentDefinitionReference releaseEnvironmentDefinition = null;
  /* Revision of the test plan. */
  int revision = null;
  
  ShallowReference rootSuite = null;
  /* Start date for the test plan. */
  DateTime startDate = null;
  /* State of the test plan. */
  String state = null;
  
  TestOutcomeSettings testOutcomeSettings = null;
  
  IdentityRef updatedBy = null;
  
  DateTime updatedDate = null;
  /* URL of the test plan resource. */
  String url = null;
  TestPlan();

  @override
  String toString() {
    return 'TestPlan[area=$area, build=$build, buildDefinition=$buildDefinition, description=$description, endDate=$endDate, id=$id, iteration=$iteration, name=$name, owner=$owner, previousBuild=$previousBuild, project=$project, releaseEnvironmentDefinition=$releaseEnvironmentDefinition, revision=$revision, rootSuite=$rootSuite, startDate=$startDate, state=$state, testOutcomeSettings=$testOutcomeSettings, updatedBy=$updatedBy, updatedDate=$updatedDate, url=$url, ]';
  }

  TestPlan.fromJson(Map<String, dynamic> json) {
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['previousBuild'] == null) {
      previousBuild = null;
    } else {
      previousBuild = ShallowReference.fromJson(json['previousBuild']);
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ShallowReference.fromJson(json['project']);
    }
    if (json['releaseEnvironmentDefinition'] == null) {
      releaseEnvironmentDefinition = null;
    } else {
      releaseEnvironmentDefinition = ReleaseEnvironmentDefinitionReference.fromJson(json['releaseEnvironmentDefinition']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
    if (json['rootSuite'] == null) {
      rootSuite = null;
    } else {
      rootSuite = ShallowReference.fromJson(json['rootSuite']);
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
    if (json['updatedBy'] == null) {
      updatedBy = null;
    } else {
      updatedBy = IdentityRef.fromJson(json['updatedBy']);
    }
    if (json['updatedDate'] == null) {
      updatedDate = null;
    } else {
      updatedDate = DateTime.parse(json['updatedDate']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
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
    if (description != null)
      json['description'] = description;
    if (endDate != null)
      json['endDate'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (iteration != null)
      json['iteration'] = iteration;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    if (previousBuild != null)
      json['previousBuild'] = previousBuild;
    if (project != null)
      json['project'] = project;
    if (releaseEnvironmentDefinition != null)
      json['releaseEnvironmentDefinition'] = releaseEnvironmentDefinition;
    if (revision != null)
      json['revision'] = revision;
    if (rootSuite != null)
      json['rootSuite'] = rootSuite;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (testOutcomeSettings != null)
      json['testOutcomeSettings'] = testOutcomeSettings;
    if (updatedBy != null)
      json['updatedBy'] = updatedBy;
    if (updatedDate != null)
      json['updatedDate'] = updatedDate == null ? null : updatedDate.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TestPlan> listFromJson(List<dynamic> json) {
    return json == null ? List<TestPlan>() : json.map((value) => TestPlan.fromJson(value)).toList();
  }

  static Map<String, TestPlan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestPlan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestPlan.fromJson(value));
    }
    return map;
  }
}

