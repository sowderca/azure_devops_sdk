part of azure_devops_sdk.api;

class PlanMetadata {
  
  IdentityRef createdByIdentity = null;
  /* Description of plan */
  String description = null;
  /* Last modified date of the plan */
  DateTime modifiedDate = null;
  /* Bit flag indicating set of permissions a user has to the plan. */
  String userPermissions = null;
  //enum userPermissionsEnum {  none,  view,  edit,  delete,  manage,  allPermissions,  };{
  PlanMetadata();

  @override
  String toString() {
    return 'PlanMetadata[createdByIdentity=$createdByIdentity, description=$description, modifiedDate=$modifiedDate, userPermissions=$userPermissions, ]';
  }

  PlanMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdByIdentity'] == null) {
      createdByIdentity = null;
    } else {
      createdByIdentity = IdentityRef.fromJson(json['createdByIdentity']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['modifiedDate'] == null) {
      modifiedDate = null;
    } else {
      modifiedDate = DateTime.parse(json['modifiedDate']);
    }
    if (json['userPermissions'] == null) {
      userPermissions = null;
    } else {
          userPermissions = json['userPermissions'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdByIdentity != null)
      json['createdByIdentity'] = createdByIdentity;
    if (description != null)
      json['description'] = description;
    if (modifiedDate != null)
      json['modifiedDate'] = modifiedDate == null ? null : modifiedDate.toUtc().toIso8601String();
    if (userPermissions != null)
      json['userPermissions'] = userPermissions;
    return json;
  }

  static List<PlanMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<PlanMetadata>() : json.map((value) => PlanMetadata.fromJson(value)).toList();
  }

  static Map<String, PlanMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlanMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlanMetadata.fromJson(value));
    }
    return map;
  }
}

