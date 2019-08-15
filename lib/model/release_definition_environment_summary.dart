part of azure_devops_sdk.api;

class ReleaseDefinitionEnvironmentSummary {
  /* ID of ReleaseDefinition environment summary. */
  int id = null;
  /* List of release shallow reference deployed using this ReleaseDefinition. */
  List<ReleaseShallowReference> lastReleases = [];
  /* Name of ReleaseDefinition environment summary. */
  String name = null;
  ReleaseDefinitionEnvironmentSummary();

  @override
  String toString() {
    return 'ReleaseDefinitionEnvironmentSummary[id=$id, lastReleases=$lastReleases, name=$name, ]';
  }

  ReleaseDefinitionEnvironmentSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastReleases'] == null) {
      lastReleases = null;
    } else {
      lastReleases = ReleaseShallowReference.listFromJson(json['lastReleases']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (lastReleases != null)
      json['lastReleases'] = lastReleases;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ReleaseDefinitionEnvironmentSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionEnvironmentSummary>() : json.map((value) => ReleaseDefinitionEnvironmentSummary.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionEnvironmentSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionEnvironmentSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionEnvironmentSummary.fromJson(value));
    }
    return map;
  }
}

