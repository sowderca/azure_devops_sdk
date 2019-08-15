part of azure_devops_sdk.api;

class BuildCoverage {
  /* Code Coverage File Url */
  String codeCoverageFileUrl = null;
  
  BuildConfiguration configuration = null;
  /* Last Error */
  String lastError = null;
  /* List of Modules */
  List<ModuleCoverage> modules = [];
  /* State */
  String state = null;
  BuildCoverage();

  @override
  String toString() {
    return 'BuildCoverage[codeCoverageFileUrl=$codeCoverageFileUrl, configuration=$configuration, lastError=$lastError, modules=$modules, state=$state, ]';
  }

  BuildCoverage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['codeCoverageFileUrl'] == null) {
      codeCoverageFileUrl = null;
    } else {
          codeCoverageFileUrl = json['codeCoverageFileUrl'];
    }
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = BuildConfiguration.fromJson(json['configuration']);
    }
    if (json['lastError'] == null) {
      lastError = null;
    } else {
          lastError = json['lastError'];
    }
    if (json['modules'] == null) {
      modules = null;
    } else {
      modules = ModuleCoverage.listFromJson(json['modules']);
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (codeCoverageFileUrl != null)
      json['codeCoverageFileUrl'] = codeCoverageFileUrl;
    if (configuration != null)
      json['configuration'] = configuration;
    if (lastError != null)
      json['lastError'] = lastError;
    if (modules != null)
      json['modules'] = modules;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<BuildCoverage> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildCoverage>() : json.map((value) => BuildCoverage.fromJson(value)).toList();
  }

  static Map<String, BuildCoverage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildCoverage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildCoverage.fromJson(value));
    }
    return map;
  }
}

