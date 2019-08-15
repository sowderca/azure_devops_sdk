part of azure_devops_sdk.api;

class BuildOption {
  
  BuildOptionDefinitionReference definition = null;
  /* Indicates whether the behavior is enabled. */
  bool enabled = null;
  
  Map<String, String> inputs = {};
  BuildOption();

  @override
  String toString() {
    return 'BuildOption[definition=$definition, enabled=$enabled, inputs=$inputs, ]';
  }

  BuildOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = BuildOptionDefinitionReference.fromJson(json['definition']);
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['inputs'] == null) {
      inputs = null;
    } else {
          inputs = (json['inputs'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definition != null)
      json['definition'] = definition;
    if (enabled != null)
      json['enabled'] = enabled;
    if (inputs != null)
      json['inputs'] = inputs;
    return json;
  }

  static List<BuildOption> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildOption>() : json.map((value) => BuildOption.fromJson(value)).toList();
  }

  static Map<String, BuildOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildOption.fromJson(value));
    }
    return map;
  }
}

