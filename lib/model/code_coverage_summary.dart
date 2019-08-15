part of azure_devops_sdk.api;

class CodeCoverageSummary {
  
  ShallowReference build = null;
  /* List of coverage data and details for the build */
  List<CodeCoverageData> coverageData = [];
  
  ShallowReference deltaBuild = null;
  /* Uri of build against which difference in coverage is computed */
  String status = null;
  //enum statusEnum {  none,  inProgress,  completed,  finalized,  pending,  };{
  CodeCoverageSummary();

  @override
  String toString() {
    return 'CodeCoverageSummary[build=$build, coverageData=$coverageData, deltaBuild=$deltaBuild, status=$status, ]';
  }

  CodeCoverageSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['build'] == null) {
      build = null;
    } else {
      build = ShallowReference.fromJson(json['build']);
    }
    if (json['coverageData'] == null) {
      coverageData = null;
    } else {
      coverageData = CodeCoverageData.listFromJson(json['coverageData']);
    }
    if (json['deltaBuild'] == null) {
      deltaBuild = null;
    } else {
      deltaBuild = ShallowReference.fromJson(json['deltaBuild']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (build != null)
      json['build'] = build;
    if (coverageData != null)
      json['coverageData'] = coverageData;
    if (deltaBuild != null)
      json['deltaBuild'] = deltaBuild;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<CodeCoverageSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeCoverageSummary>() : json.map((value) => CodeCoverageSummary.fromJson(value)).toList();
  }

  static Map<String, CodeCoverageSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeCoverageSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeCoverageSummary.fromJson(value));
    }
    return map;
  }
}

