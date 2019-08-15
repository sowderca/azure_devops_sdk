part of azure_devops_sdk.api;

class ServiceEndpoint {
  
  IdentityRef administratorsGroup = null;
  
  EndpointAuthorization authorization = null;
  
  IdentityRef createdBy = null;
  
  Map<String, String> data = {};
  /* Gets or sets the description of endpoint. */
  String description = null;
  /* This is a deprecated field. */
  String groupScopeId = null;
  /* Gets or sets the identifier of this endpoint. */
  String id = null;
  /* EndPoint state indicator */
  bool isReady = null;
  /* Indicates whether service endpoint is shared with other projects or not. */
  bool isShared = null;
  /* Gets or sets the friendly name of the endpoint. */
  String name = null;
  
  JObject operationStatus = null;
  /* Owner of the endpoint Supported values are \"library\", \"agentcloud\" */
  String owner = null;
  
  IdentityRef readersGroup = null;
  /* Gets or sets the type of the endpoint. */
  String type = null;
  /* Gets or sets the url of the endpoint. */
  String url = null;
  ServiceEndpoint();

  @override
  String toString() {
    return 'ServiceEndpoint[administratorsGroup=$administratorsGroup, authorization=$authorization, createdBy=$createdBy, data=$data, description=$description, groupScopeId=$groupScopeId, id=$id, isReady=$isReady, isShared=$isShared, name=$name, operationStatus=$operationStatus, owner=$owner, readersGroup=$readersGroup, type=$type, url=$url, ]';
  }

  ServiceEndpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['administratorsGroup'] == null) {
      administratorsGroup = null;
    } else {
      administratorsGroup = IdentityRef.fromJson(json['administratorsGroup']);
    }
    if (json['authorization'] == null) {
      authorization = null;
    } else {
      authorization = EndpointAuthorization.fromJson(json['authorization']);
    }
    if (json['createdBy'] == null) {
      createdBy = null;
    } else {
      createdBy = IdentityRef.fromJson(json['createdBy']);
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['groupScopeId'] == null) {
      groupScopeId = null;
    } else {
          groupScopeId = json['groupScopeId'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isReady'] == null) {
      isReady = null;
    } else {
          isReady = json['isReady'];
    }
    if (json['isShared'] == null) {
      isShared = null;
    } else {
          isShared = json['isShared'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['operationStatus'] == null) {
      operationStatus = null;
    } else {
      operationStatus = JObject.fromJson(json['operationStatus']);
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
    if (json['readersGroup'] == null) {
      readersGroup = null;
    } else {
      readersGroup = IdentityRef.fromJson(json['readersGroup']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (administratorsGroup != null)
      json['administratorsGroup'] = administratorsGroup;
    if (authorization != null)
      json['authorization'] = authorization;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (data != null)
      json['data'] = data;
    if (description != null)
      json['description'] = description;
    if (groupScopeId != null)
      json['groupScopeId'] = groupScopeId;
    if (id != null)
      json['id'] = id;
    if (isReady != null)
      json['isReady'] = isReady;
    if (isShared != null)
      json['isShared'] = isShared;
    if (name != null)
      json['name'] = name;
    if (operationStatus != null)
      json['operationStatus'] = operationStatus;
    if (owner != null)
      json['owner'] = owner;
    if (readersGroup != null)
      json['readersGroup'] = readersGroup;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ServiceEndpoint> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpoint>() : json.map((value) => ServiceEndpoint.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpoint.fromJson(value));
    }
    return map;
  }
}

