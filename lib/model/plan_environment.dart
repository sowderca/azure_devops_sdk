part of azure_devops_sdk.api;

class PlanEnvironment {
  
  List<MaskHint> mask = [];
  
  Map<String, JobOption> options = {};
  
  Map<String, String> variables = {};
  PlanEnvironment();

  @override
  String toString() {
    return 'PlanEnvironment[mask=$mask, options=$options, variables=$variables, ]';
  }

  PlanEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mask'] == null) {
      mask = null;
    } else {
      mask = MaskHint.listFromJson(json['mask']);
    }
    if (json['options'] == null) {
      options = null;
    } else {
      options = JobOption.mapFromJson(json['options']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
          variables = (json['variables'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mask != null)
      json['mask'] = mask;
    if (options != null)
      json['options'] = options;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<PlanEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? List<PlanEnvironment>() : json.map((value) => PlanEnvironment.fromJson(value)).toList();
  }

  static Map<String, PlanEnvironment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlanEnvironment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlanEnvironment.fromJson(value));
    }
    return map;
  }
}

