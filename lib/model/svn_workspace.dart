part of azure_devops_sdk.api;

class SvnWorkspace {
  
  List<SvnMappingDetails> mappings = [];
  SvnWorkspace();

  @override
  String toString() {
    return 'SvnWorkspace[mappings=$mappings, ]';
  }

  SvnWorkspace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mappings'] == null) {
      mappings = null;
    } else {
      mappings = SvnMappingDetails.listFromJson(json['mappings']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mappings != null)
      json['mappings'] = mappings;
    return json;
  }

  static List<SvnWorkspace> listFromJson(List<dynamic> json) {
    return json == null ? List<SvnWorkspace>() : json.map((value) => SvnWorkspace.fromJson(value)).toList();
  }

  static Map<String, SvnWorkspace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SvnWorkspace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SvnWorkspace.fromJson(value));
    }
    return map;
  }
}

