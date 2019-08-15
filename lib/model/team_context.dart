part of azure_devops_sdk.api;

class TeamContext {
  /* The team project Id or name.  Ignored if ProjectId is set. */
  String project = null;
  /* The Team Project ID.  Required if Project is not set. */
  String projectId = null;
  /* The Team Id or name.  Ignored if TeamId is set. */
  String team = null;
  /* The Team Id */
  String teamId = null;
  TeamContext();

  @override
  String toString() {
    return 'TeamContext[project=$project, projectId=$projectId, team=$team, teamId=$teamId, ]';
  }

  TeamContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['project'] == null) {
      project = null;
    } else {
          project = json['project'];
    }
    if (json['projectId'] == null) {
      projectId = null;
    } else {
          projectId = json['projectId'];
    }
    if (json['team'] == null) {
      team = null;
    } else {
          team = json['team'];
    }
    if (json['teamId'] == null) {
      teamId = null;
    } else {
          teamId = json['teamId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (project != null)
      json['project'] = project;
    if (projectId != null)
      json['projectId'] = projectId;
    if (team != null)
      json['team'] = team;
    if (teamId != null)
      json['teamId'] = teamId;
    return json;
  }

  static List<TeamContext> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamContext>() : json.map((value) => TeamContext.fromJson(value)).toList();
  }

  static Map<String, TeamContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamContext.fromJson(value));
    }
    return map;
  }
}

