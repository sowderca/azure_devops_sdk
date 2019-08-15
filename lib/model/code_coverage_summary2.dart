part of azure_devops_sdk.api;

class CodeCoverageSummary2 {
  
  int buildConfigurationId = null;
  
  int covered = null;
  
  String label = null;
  
  int position = null;
  
  String projectId = null;
  
  int total = null;
  CodeCoverageSummary2();

  @override
  String toString() {
    return 'CodeCoverageSummary2[buildConfigurationId=$buildConfigurationId, covered=$covered, label=$label, position=$position, projectId=$projectId, total=$total, ]';
  }

  CodeCoverageSummary2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildConfigurationId'] == null) {
      buildConfigurationId = null;
    } else {
          buildConfigurationId = json['buildConfigurationId'];
    }
    if (json['covered'] == null) {
      covered = null;
    } else {
          covered = json['covered'];
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
    if (json['position'] == null) {
      position = null;
    } else {
          position = json['position'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['total'] == null) {
      total = null;
    } else {
          total = json['total'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildConfigurationId != null)
      json['buildConfigurationId'] = buildConfigurationId;
    if (covered != null)
      json['covered'] = covered;
    if (label != null)
      json['label'] = label;
    if (position != null)
      json['position'] = position;
    if (projectId != null)
      json['projectId'] = projectId;
    if (total != null)
      json['total'] = total;
    return json;
  }

  static List<CodeCoverageSummary2> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeCoverageSummary2>() : json.map((value) => CodeCoverageSummary2.fromJson(value)).toList();
  }

  static Map<String, CodeCoverageSummary2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeCoverageSummary2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeCoverageSummary2.fromJson(value));
    }
    return map;
  }
}

