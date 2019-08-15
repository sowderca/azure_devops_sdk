part of azure_devops_sdk.api;

class ReleaseDefinitionSummary {
  /* List of Release Definition environment summary. */
  List<ReleaseDefinitionEnvironmentSummary> environments = [];
  
  ReleaseDefinitionShallowReference releaseDefinition = null;
  /* List of releases deployed using this Release Definition. */
  List<Release> releases = [];
  ReleaseDefinitionSummary();

  @override
  String toString() {
    return 'ReleaseDefinitionSummary[environments=$environments, releaseDefinition=$releaseDefinition, releases=$releases, ]';
  }

  ReleaseDefinitionSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['environments'] == null) {
      environments = null;
    } else {
      environments = ReleaseDefinitionEnvironmentSummary.listFromJson(json['environments']);
    }
    if (json['releaseDefinition'] == null) {
      releaseDefinition = null;
    } else {
      releaseDefinition = ReleaseDefinitionShallowReference.fromJson(json['releaseDefinition']);
    }
    if (json['releases'] == null) {
      releases = null;
    } else {
      releases = Release.listFromJson(json['releases']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (environments != null)
      json['environments'] = environments;
    if (releaseDefinition != null)
      json['releaseDefinition'] = releaseDefinition;
    if (releases != null)
      json['releases'] = releases;
    return json;
  }

  static List<ReleaseDefinitionSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionSummary>() : json.map((value) => ReleaseDefinitionSummary.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionSummary.fromJson(value));
    }
    return map;
  }
}

