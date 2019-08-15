part of azure_devops_sdk.api;

class TeamFieldValues {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamFieldValues();

  @override
  String toString() {
    return 'TeamFieldValues[links=$links, url=$url, ]';
  }

  TeamFieldValues.fromJson(Map<String, dynamic> json) {
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

  static List<TeamFieldValues> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamFieldValues>() : json.map((value) => TeamFieldValues.fromJson(value)).toList();
  }

  static Map<String, TeamFieldValues> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamFieldValues>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamFieldValues.fromJson(value));
    }
    return map;
  }
}

