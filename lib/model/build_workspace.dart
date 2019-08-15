part of azure_devops_sdk.api;

class BuildWorkspace {
  
  List<MappingDetails> mappings = [];
  BuildWorkspace();

  @override
  String toString() {
    return 'BuildWorkspace[mappings=$mappings, ]';
  }

  BuildWorkspace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mappings'] == null) {
      mappings = null;
    } else {
      mappings = MappingDetails.listFromJson(json['mappings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mappings != null)
      json['mappings'] = mappings;
    return json;
  }

  static List<BuildWorkspace> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildWorkspace>() : json.map((value) => BuildWorkspace.fromJson(value)).toList();
  }

  static Map<String, BuildWorkspace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildWorkspace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildWorkspace.fromJson(value));
    }
    return map;
  }
}

