part of azure_devops_sdk.api;

class MemberEntitlement {
  
  AccessLevel accessLevel = null;
  /* [Readonly] Date the user was added to the collection. */
  DateTime dateCreated = null;
  /* User's extensions. */
  List<Extension> extensions = [];
  /* [Readonly] GroupEntitlements that this user belongs to. */
  List<GroupEntitlement> groupAssignments = [];
  /* The unique identifier which matches the Id of the Identity associated with the GraphMember. */
  String id = null;
  /* [Readonly] Date the user last accessed the collection. */
  DateTime lastAccessedDate = null;
  /* Relation between a project and the user's effective permissions in that project. */
  List<ProjectEntitlement> projectEntitlements = [];
  
  GraphUser user = null;
  MemberEntitlement();

  @override
  String toString() {
    return 'MemberEntitlement[accessLevel=$accessLevel, dateCreated=$dateCreated, extensions=$extensions, groupAssignments=$groupAssignments, id=$id, lastAccessedDate=$lastAccessedDate, projectEntitlements=$projectEntitlements, user=$user, ]';
  }

  MemberEntitlement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessLevel'] == null) {
      accessLevel = null;
    } else {
      accessLevel = AccessLevel.fromJson(json['accessLevel']);
    }
    if (json['dateCreated'] == null) {
      dateCreated = null;
    } else {
      dateCreated = DateTime.parse(json['dateCreated']);
    }
    if (json['extensions'] == null) {
      extensions = null;
    } else {
      extensions = Extension.listFromJson(json['extensions']);
    }
    if (json['groupAssignments'] == null) {
      groupAssignments = null;
    } else {
      groupAssignments = GroupEntitlement.listFromJson(json['groupAssignments']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastAccessedDate'] == null) {
      lastAccessedDate = null;
    } else {
      lastAccessedDate = DateTime.parse(json['lastAccessedDate']);
    }
    if (json['projectEntitlements'] == null) {
      projectEntitlements = null;
    } else {
      projectEntitlements = ProjectEntitlement.listFromJson(json['projectEntitlements']);
    }
    if (json['user'] == null) {
      user = null;
    } else {
      user = GraphUser.fromJson(json['user']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessLevel != null)
      json['accessLevel'] = accessLevel;
    if (dateCreated != null)
      json['dateCreated'] = dateCreated == null ? null : dateCreated.toUtc().toIso8601String();
    if (extensions != null)
      json['extensions'] = extensions;
    if (groupAssignments != null)
      json['groupAssignments'] = groupAssignments;
    if (id != null)
      json['id'] = id;
    if (lastAccessedDate != null)
      json['lastAccessedDate'] = lastAccessedDate == null ? null : lastAccessedDate.toUtc().toIso8601String();
    if (projectEntitlements != null)
      json['projectEntitlements'] = projectEntitlements;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<MemberEntitlement> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberEntitlement>() : json.map((value) => MemberEntitlement.fromJson(value)).toList();
  }

  static Map<String, MemberEntitlement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEntitlement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberEntitlement.fromJson(value));
    }
    return map;
  }
}

