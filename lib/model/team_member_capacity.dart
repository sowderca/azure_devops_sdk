part of azure_devops_sdk.api;

class TeamMemberCapacity {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamMemberCapacity();

  @override
  String toString() {
    return 'TeamMemberCapacity[links=$links, url=$url, ]';
  }

  TeamMemberCapacity.fromJson(Map<String, dynamic> json) {
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

  static List<TeamMemberCapacity> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamMemberCapacity>() : json.map((value) => TeamMemberCapacity.fromJson(value)).toList();
  }

  static Map<String, TeamMemberCapacity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamMemberCapacity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamMemberCapacity.fromJson(value));
    }
    return map;
  }
}

