part of azure_devops_sdk.api;

class TeamSetting {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamSetting();

  @override
  String toString() {
    return 'TeamSetting[links=$links, url=$url, ]';
  }

  TeamSetting.fromJson(Map<String, dynamic> json) {
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

  static List<TeamSetting> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamSetting>() : json.map((value) => TeamSetting.fromJson(value)).toList();
  }

  static Map<String, TeamSetting> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamSetting>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamSetting.fromJson(value));
    }
    return map;
  }
}

