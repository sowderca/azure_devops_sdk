part of azure_devops_sdk.api;

class TeamMemberCapacityIdentityRef {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  TeamMemberCapacityIdentityRef();

  @override
  String toString() {
    return 'TeamMemberCapacityIdentityRef[links=$links, url=$url, ]';
  }

  TeamMemberCapacityIdentityRef.fromJson(Map<String, dynamic> json) {
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

  static List<TeamMemberCapacityIdentityRef> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamMemberCapacityIdentityRef>() : json.map((value) => TeamMemberCapacityIdentityRef.fromJson(value)).toList();
  }

  static Map<String, TeamMemberCapacityIdentityRef> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamMemberCapacityIdentityRef>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamMemberCapacityIdentityRef.fromJson(value));
    }
    return map;
  }
}

