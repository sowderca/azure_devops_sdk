part of azure_devops_sdk.api;

class GroupEntitlement {
  /* Extension Rules. */
  List<Extension> extensionRules = [];
  
  GraphGroup group = null;
  /* The unique identifier which matches the Id of the GraphMember. */
  String id = null;
  /* [Readonly] The last time the group licensing rule was executed (regardless of whether any changes were made). */
  DateTime lastExecuted = null;
  
  AccessLevel licenseRule = null;
  /* Group members. Only used when creating a new group. */
  List<UserEntitlement> members = [];
  /* Relation between a project and the member's effective permissions in that project. */
  List<ProjectEntitlement> projectEntitlements = [];
  /* The status of the group rule. */
  String status = null;
  //enum statusEnum {  applyPending,  applied,  incompatible,  unableToApply,  };{
  GroupEntitlement();

  @override
  String toString() {
    return 'GroupEntitlement[extensionRules=$extensionRules, group=$group, id=$id, lastExecuted=$lastExecuted, licenseRule=$licenseRule, members=$members, projectEntitlements=$projectEntitlements, status=$status, ]';
  }

  GroupEntitlement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extensionRules'] == null) {
      extensionRules = null;
    } else {
      extensionRules = Extension.listFromJson(json['extensionRules']);
    }
    if (json['group'] == null) {
      group = null;
    } else {
      group = GraphGroup.fromJson(json['group']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastExecuted'] == null) {
      lastExecuted = null;
    } else {
      lastExecuted = DateTime.parse(json['lastExecuted']);
    }
    if (json['licenseRule'] == null) {
      licenseRule = null;
    } else {
      licenseRule = AccessLevel.fromJson(json['licenseRule']);
    }
    if (json['members'] == null) {
      members = null;
    } else {
      members = UserEntitlement.listFromJson(json['members']);
    }
    if (json['projectEntitlements'] == null) {
      projectEntitlements = null;
    } else {
      projectEntitlements = ProjectEntitlement.listFromJson(json['projectEntitlements']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extensionRules != null)
      json['extensionRules'] = extensionRules;
    if (group != null)
      json['group'] = group;
    if (id != null)
      json['id'] = id;
    if (lastExecuted != null)
      json['lastExecuted'] = lastExecuted == null ? null : lastExecuted.toUtc().toIso8601String();
    if (licenseRule != null)
      json['licenseRule'] = licenseRule;
    if (members != null)
      json['members'] = members;
    if (projectEntitlements != null)
      json['projectEntitlements'] = projectEntitlements;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<GroupEntitlement> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupEntitlement>() : json.map((value) => GroupEntitlement.fromJson(value)).toList();
  }

  static Map<String, GroupEntitlement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupEntitlement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupEntitlement.fromJson(value));
    }
    return map;
  }
}

