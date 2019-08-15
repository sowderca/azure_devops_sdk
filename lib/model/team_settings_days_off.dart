part of azure_devops_sdk.api;

class TeamSettingsDaysOff {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamSettingsDaysOff();

  @override
  String toString() {
    return 'TeamSettingsDaysOff[links=$links, url=$url, ]';
  }

  TeamSettingsDaysOff.fromJson(Map<String, dynamic> json) {
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

  static List<TeamSettingsDaysOff> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamSettingsDaysOff>() : json.map((value) => TeamSettingsDaysOff.fromJson(value)).toList();
  }

  static Map<String, TeamSettingsDaysOff> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamSettingsDaysOff>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamSettingsDaysOff.fromJson(value));
    }
    return map;
  }
}

