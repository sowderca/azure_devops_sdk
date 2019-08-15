part of azure_devops_sdk.api;

class FunctionCoverage {
  
  String class_ = null;
  
  String name = null;
  
  String namespace = null;
  
  String sourceFile = null;
  
  CoverageStatistics statistics = null;
  FunctionCoverage();

  @override
  String toString() {
    return 'FunctionCoverage[class_=$class_, name=$name, namespace=$namespace, sourceFile=$sourceFile, statistics=$statistics, ]';
  }

  FunctionCoverage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['class'] == null) {
      class_ = null;
    } else {
          class_ = json['class'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['namespace'] == null) {
      namespace = null;
    } else {
          namespace = json['namespace'];
    }
    if (json['sourceFile'] == null) {
      sourceFile = null;
    } else {
          sourceFile = json['sourceFile'];
    }
    if (json['statistics'] == null) {
      statistics = null;
    } else {
      statistics = CoverageStatistics.fromJson(json['statistics']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (class_ != null)
      json['class'] = class_;
    if (name != null)
      json['name'] = name;
    if (namespace != null)
      json['namespace'] = namespace;
    if (sourceFile != null)
      json['sourceFile'] = sourceFile;
    if (statistics != null)
      json['statistics'] = statistics;
    return json;
  }

  static List<FunctionCoverage> listFromJson(List<dynamic> json) {
    return json == null ? List<FunctionCoverage>() : json.map((value) => FunctionCoverage.fromJson(value)).toList();
  }

  static Map<String, FunctionCoverage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FunctionCoverage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FunctionCoverage.fromJson(value));
    }
    return map;
  }
}

