part of azure_devops_sdk.api;

class BuildDeployment {
  
  BuildSummary deployment = null;
  
  XamlBuildReference sourceBuild = null;
  BuildDeployment();

  @override
  String toString() {
    return 'BuildDeployment[deployment=$deployment, sourceBuild=$sourceBuild, ]';
  }

  BuildDeployment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deployment'] == null) {
      deployment = null;
    } else {
      deployment = BuildSummary.fromJson(json['deployment']);
    }
    if (json['sourceBuild'] == null) {
      sourceBuild = null;
    } else {
      sourceBuild = XamlBuildReference.fromJson(json['sourceBuild']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deployment != null)
      json['deployment'] = deployment;
    if (sourceBuild != null)
      json['sourceBuild'] = sourceBuild;
    return json;
  }

  static List<BuildDeployment> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDeployment>() : json.map((value) => BuildDeployment.fromJson(value)).toList();
  }

  static Map<String, BuildDeployment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDeployment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDeployment.fromJson(value));
    }
    return map;
  }
}

