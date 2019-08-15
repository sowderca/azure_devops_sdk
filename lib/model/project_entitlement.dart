part of azure_devops_sdk.api;

class ProjectEntitlement {
  /* Assignment Source (e.g. Group or Unknown). */
  String assignmentSource = null;
  //enum assignmentSourceEnum {  none,  unknown,  groupRule,  };{
  
  Group group = null;
  /* Whether the user is inheriting permissions to a project through a Azure DevOps or AAD group membership. */
  String projectPermissionInherited = null;
  //enum projectPermissionInheritedEnum {  notSet,  notInherited,  inherited,  };{
  
  ProjectRef projectRef = null;
  /* Team Ref. */
  List<TeamRef> teamRefs = [];
  ProjectEntitlement();

  @override
  String toString() {
    return 'ProjectEntitlement[assignmentSource=$assignmentSource, group=$group, projectPermissionInherited=$projectPermissionInherited, projectRef=$projectRef, teamRefs=$teamRefs, ]';
  }

  ProjectEntitlement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignmentSource'] == null) {
      assignmentSource = null;
    } else {
          assignmentSource = json['assignmentSource'];
    }
    if (json['group'] == null) {
      group = null;
    } else {
      group = Group.fromJson(json['group']);
    }
    if (json['projectPermissionInherited'] == null) {
      projectPermissionInherited = null;
    } else {
          projectPermissionInherited = json['projectPermissionInherited'];
    }
    if (json['projectRef'] == null) {
      projectRef = null;
    } else {
      projectRef = ProjectRef.fromJson(json['projectRef']);
    }
    if (json['teamRefs'] == null) {
      teamRefs = null;
    } else {
      teamRefs = TeamRef.listFromJson(json['teamRefs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignmentSource != null)
      json['assignmentSource'] = assignmentSource;
    if (group != null)
      json['group'] = group;
    if (projectPermissionInherited != null)
      json['projectPermissionInherited'] = projectPermissionInherited;
    if (projectRef != null)
      json['projectRef'] = projectRef;
    if (teamRefs != null)
      json['teamRefs'] = teamRefs;
    return json;
  }

  static List<ProjectEntitlement> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectEntitlement>() : json.map((value) => ProjectEntitlement.fromJson(value)).toList();
  }

  static Map<String, ProjectEntitlement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectEntitlement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectEntitlement.fromJson(value));
    }
    return map;
  }
}

