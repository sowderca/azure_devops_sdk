part of azure_devops_sdk.api;

class PointAssignment {
  
  ShallowReference configuration = null;
  
  IdentityRef tester = null;
  PointAssignment();

  @override
  String toString() {
    return 'PointAssignment[configuration=$configuration, tester=$tester, ]';
  }

  PointAssignment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = ShallowReference.fromJson(json['configuration']);
    }
    if (json['tester'] == null) {
      tester = null;
    } else {
      tester = IdentityRef.fromJson(json['tester']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configuration != null)
      json['configuration'] = configuration;
    if (tester != null)
      json['tester'] = tester;
    return json;
  }

  static List<PointAssignment> listFromJson(List<dynamic> json) {
    return json == null ? List<PointAssignment>() : json.map((value) => PointAssignment.fromJson(value)).toList();
  }

  static Map<String, PointAssignment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointAssignment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointAssignment.fromJson(value));
    }
    return map;
  }
}

