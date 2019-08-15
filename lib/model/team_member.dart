part of azure_devops_sdk.api;

class TeamMember {
  
  IdentityRef identity = null;
  
  bool isTeamAdmin = null;
  TeamMember();

  @override
  String toString() {
    return 'TeamMember[identity=$identity, isTeamAdmin=$isTeamAdmin, ]';
  }

  TeamMember.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identity'] == null) {
      identity = null;
    } else {
      identity = IdentityRef.fromJson(json['identity']);
    }
    if (json['isTeamAdmin'] == null) {
      isTeamAdmin = null;
    } else {
          isTeamAdmin = json['isTeamAdmin'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identity != null)
      json['identity'] = identity;
    if (isTeamAdmin != null)
      json['isTeamAdmin'] = isTeamAdmin;
    return json;
  }

  static List<TeamMember> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamMember>() : json.map((value) => TeamMember.fromJson(value)).toList();
  }

  static Map<String, TeamMember> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamMember>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamMember.fromJson(value));
    }
    return map;
  }
}

