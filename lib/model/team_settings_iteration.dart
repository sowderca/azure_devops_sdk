part of azure_devops_sdk.api;

class TeamSettingsIteration {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamSettingsIteration();

  @override
  String toString() {
    return 'TeamSettingsIteration[links=$links, url=$url, ]';
  }

  TeamSettingsIteration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<TeamSettingsIteration> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamSettingsIteration>() : json.map((value) => TeamSettingsIteration.fromJson(value)).toList();
  }

  static Map<String, TeamSettingsIteration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamSettingsIteration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamSettingsIteration.fromJson(value));
    }
    return map;
  }
}

