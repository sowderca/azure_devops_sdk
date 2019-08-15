part of azure_devops_sdk.api;

class Phase {
  /* The condition that must be true for this phase to execute. */
  String condition = null;
  
  List<Dependency> dependencies = [];
  /* The job authorization scope for builds queued against this definition. */
  String jobAuthorizationScope = null;
  //enum jobAuthorizationScopeEnum {  projectCollection,  project,  };{
  /* The cancellation timeout, in minutes, for builds queued against this definition. */
  int jobCancelTimeoutInMinutes = null;
  /* The job execution timeout, in minutes, for builds queued against this definition. */
  int jobTimeoutInMinutes = null;
  /* The name of the phase. */
  String name = null;
  /* The unique ref name of the phase. */
  String refName = null;
  
  List<BuildDefinitionStep> steps = [];
  
  PhaseTarget target = null;
  
  Map<String, BuildDefinitionVariable> variables = {};
  Phase();

  @override
  String toString() {
    return 'Phase[condition=$condition, dependencies=$dependencies, jobAuthorizationScope=$jobAuthorizationScope, jobCancelTimeoutInMinutes=$jobCancelTimeoutInMinutes, jobTimeoutInMinutes=$jobTimeoutInMinutes, name=$name, refName=$refName, steps=$steps, target=$target, variables=$variables, ]';
  }

  Phase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['condition'] == null) {
      condition = null;
    } else {
          condition = json['condition'];
    }
    if (json['dependencies'] == null) {
      dependencies = null;
    } else {
      dependencies = Dependency.listFromJson(json['dependencies']);
    }
    if (json['jobAuthorizationScope'] == null) {
      jobAuthorizationScope = null;
    } else {
          jobAuthorizationScope = json['jobAuthorizationScope'];
    }
    if (json['jobCancelTimeoutInMinutes'] == null) {
      jobCancelTimeoutInMinutes = null;
    } else {
          jobCancelTimeoutInMinutes = json['jobCancelTimeoutInMinutes'];
    }
    if (json['jobTimeoutInMinutes'] == null) {
      jobTimeoutInMinutes = null;
    } else {
          jobTimeoutInMinutes = json['jobTimeoutInMinutes'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['refName'] == null) {
      refName = null;
    } else {
          refName = json['refName'];
    }
    if (json['steps'] == null) {
      steps = null;
    } else {
      steps = BuildDefinitionStep.listFromJson(json['steps']);
    }
    if (json['target'] == null) {
      target = null;
    } else {
      target = PhaseTarget.fromJson(json['target']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = BuildDefinitionVariable.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (condition != null)
      json['condition'] = condition;
    if (dependencies != null)
      json['dependencies'] = dependencies;
    if (jobAuthorizationScope != null)
      json['jobAuthorizationScope'] = jobAuthorizationScope;
    if (jobCancelTimeoutInMinutes != null)
      json['jobCancelTimeoutInMinutes'] = jobCancelTimeoutInMinutes;
    if (jobTimeoutInMinutes != null)
      json['jobTimeoutInMinutes'] = jobTimeoutInMinutes;
    if (name != null)
      json['name'] = name;
    if (refName != null)
      json['refName'] = refName;
    if (steps != null)
      json['steps'] = steps;
    if (target != null)
      json['target'] = target;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<Phase> listFromJson(List<dynamic> json) {
    return json == null ? List<Phase>() : json.map((value) => Phase.fromJson(value)).toList();
  }

  static Map<String, Phase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Phase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Phase.fromJson(value));
    }
    return map;
  }
}

