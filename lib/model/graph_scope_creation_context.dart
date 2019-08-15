part of azure_devops_sdk.api;

class GraphScopeCreationContext {
  /* Set this field to override the default description of this scope's admin group. */
  String adminGroupDescription = null;
  /* All scopes have an Administrator Group that controls access to the contents of the scope. Set this field to use a non-default group name for that administrators group. */
  String adminGroupName = null;
  /* Set this optional field if this scope is created on behalf of a user other than the user making the request. This should be the Id of the user that is not the requester. */
  String creatorId = null;
  /* The scope must be provided with a unique name within the parent scope. This means the created scope can have a parent or child with the same name, but no siblings with the same name. */
  String name = null;
  /* The type of scope being created. */
  String scopeType = null;
  //enum scopeTypeEnum {  generic,  serviceHost,  teamProject,  };{
  /* An optional ID that uniquely represents the scope within it's parent scope. If this parameter is not provided, Vsts will generate on automatically. */
  String storageKey = null;
  GraphScopeCreationContext();

  @override
  String toString() {
    return 'GraphScopeCreationContext[adminGroupDescription=$adminGroupDescription, adminGroupName=$adminGroupName, creatorId=$creatorId, name=$name, scopeType=$scopeType, storageKey=$storageKey, ]';
  }

  GraphScopeCreationContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['adminGroupDescription'] == null) {
      adminGroupDescription = null;
    } else {
          adminGroupDescription = json['adminGroupDescription'];
    }
    if (json['adminGroupName'] == null) {
      adminGroupName = null;
    } else {
          adminGroupName = json['adminGroupName'];
    }
    if (json['creatorId'] == null) {
      creatorId = null;
    } else {
          creatorId = json['creatorId'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['scopeType'] == null) {
      scopeType = null;
    } else {
          scopeType = json['scopeType'];
    }
    if (json['storageKey'] == null) {
      storageKey = null;
    } else {
          storageKey = json['storageKey'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (adminGroupDescription != null)
      json['adminGroupDescription'] = adminGroupDescription;
    if (adminGroupName != null)
      json['adminGroupName'] = adminGroupName;
    if (creatorId != null)
      json['creatorId'] = creatorId;
    if (name != null)
      json['name'] = name;
    if (scopeType != null)
      json['scopeType'] = scopeType;
    if (storageKey != null)
      json['storageKey'] = storageKey;
    return json;
  }

  static List<GraphScopeCreationContext> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphScopeCreationContext>() : json.map((value) => GraphScopeCreationContext.fromJson(value)).toList();
  }

  static Map<String, GraphScopeCreationContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphScopeCreationContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphScopeCreationContext.fromJson(value));
    }
    return map;
  }
}

