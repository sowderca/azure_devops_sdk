part of azure_devops_sdk.api;

class UsersSummary {
  /* Available Access Levels */
  List<AccessLevel> availableAccessLevels = [];
  /* Summary of Extensions in the organization */
  List<ExtensionSummaryData> extensions = [];
  /* Group Options */
  List<GroupOption> groupOptions = [];
  /* Summary of Licenses in the organization */
  List<LicenseSummaryData> licenses = [];
  /* Summary of Projects in the organization */
  List<ProjectRef> projectRefs = [];
  UsersSummary();

  @override
  String toString() {
    return 'UsersSummary[availableAccessLevels=$availableAccessLevels, extensions=$extensions, groupOptions=$groupOptions, licenses=$licenses, projectRefs=$projectRefs, ]';
  }

  UsersSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['availableAccessLevels'] == null) {
      availableAccessLevels = null;
    } else {
      availableAccessLevels = AccessLevel.listFromJson(json['availableAccessLevels']);
    }
    if (json['extensions'] == null) {
      extensions = null;
    } else {
      extensions = ExtensionSummaryData.listFromJson(json['extensions']);
    }
    if (json['groupOptions'] == null) {
      groupOptions = null;
    } else {
      groupOptions = GroupOption.listFromJson(json['groupOptions']);
    }
    if (json['licenses'] == null) {
      licenses = null;
    } else {
      licenses = LicenseSummaryData.listFromJson(json['licenses']);
    }
    if (json['projectRefs'] == null) {
      projectRefs = null;
    } else {
      projectRefs = ProjectRef.listFromJson(json['projectRefs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (availableAccessLevels != null)
      json['availableAccessLevels'] = availableAccessLevels;
    if (extensions != null)
      json['extensions'] = extensions;
    if (groupOptions != null)
      json['groupOptions'] = groupOptions;
    if (licenses != null)
      json['licenses'] = licenses;
    if (projectRefs != null)
      json['projectRefs'] = projectRefs;
    return json;
  }

  static List<UsersSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<UsersSummary>() : json.map((value) => UsersSummary.fromJson(value)).toList();
  }

  static Map<String, UsersSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UsersSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UsersSummary.fromJson(value));
    }
    return map;
  }
}

