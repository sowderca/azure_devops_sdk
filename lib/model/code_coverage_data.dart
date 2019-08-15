part of azure_devops_sdk.api;

class CodeCoverageData {
  /* Flavor of build for which data is retrieved/published */
  String buildFlavor = null;
  /* Platform of build for which data is retrieved/published */
  String buildPlatform = null;
  /* List of coverage data for the build */
  List<CodeCoverageStatistics> coverageStats = [];
  CodeCoverageData();

  @override
  String toString() {
    return 'CodeCoverageData[buildFlavor=$buildFlavor, buildPlatform=$buildPlatform, coverageStats=$coverageStats, ]';
  }

  CodeCoverageData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildFlavor'] == null) {
      buildFlavor = null;
    } else {
          buildFlavor = json['buildFlavor'];
    }
    if (json['buildPlatform'] == null) {
      buildPlatform = null;
    } else {
          buildPlatform = json['buildPlatform'];
    }
    if (json['coverageStats'] == null) {
      coverageStats = null;
    } else {
      coverageStats = CodeCoverageStatistics.listFromJson(json['coverageStats']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildFlavor != null)
      json['buildFlavor'] = buildFlavor;
    if (buildPlatform != null)
      json['buildPlatform'] = buildPlatform;
    if (coverageStats != null)
      json['coverageStats'] = coverageStats;
    return json;
  }

  static List<CodeCoverageData> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeCoverageData>() : json.map((value) => CodeCoverageData.fromJson(value)).toList();
  }

  static Map<String, CodeCoverageData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeCoverageData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeCoverageData.fromJson(value));
    }
    return map;
  }
}

