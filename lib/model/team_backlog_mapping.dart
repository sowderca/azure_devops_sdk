part of azure_devops_sdk.api;

class TeamBacklogMapping {
  
  String categoryReferenceName = null;
  
  String teamId = null;
  TeamBacklogMapping();

  @override
  String toString() {
    return 'TeamBacklogMapping[categoryReferenceName=$categoryReferenceName, teamId=$teamId, ]';
  }

  TeamBacklogMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['categoryReferenceName'] == null) {
      categoryReferenceName = null;
    } else {
          categoryReferenceName = json['categoryReferenceName'];
    }
    if (json['teamId'] == null) {
      teamId = null;
    } else {
          teamId = json['teamId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (categoryReferenceName != null)
      json['categoryReferenceName'] = categoryReferenceName;
    if (teamId != null)
      json['teamId'] = teamId;
    return json;
  }

  static List<TeamBacklogMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamBacklogMapping>() : json.map((value) => TeamBacklogMapping.fromJson(value)).toList();
  }

  static Map<String, TeamBacklogMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamBacklogMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamBacklogMapping.fromJson(value));
    }
    return map;
  }
}

