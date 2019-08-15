part of azure_devops_sdk.api;

class BuildAgent {
  
  String buildDirectory = null;
  
  XamlBuildControllerReference controller = null;
  
  DateTime createdDate = null;
  
  String description = null;
  
  bool enabled = null;
  
  int id = null;
  
  String messageQueueUrl = null;
  
  String name = null;
  
  String reservedForBuild = null;
  
  XamlBuildServerReference server = null;
  
  String status = null;
  //enum statusEnum {  unavailable,  available,  offline,  };{
  
  String statusMessage = null;
  
  DateTime updatedDate = null;
  
  String uri = null;
  
  String url = null;
  BuildAgent();

  @override
  String toString() {
    return 'BuildAgent[buildDirectory=$buildDirectory, controller=$controller, createdDate=$createdDate, description=$description, enabled=$enabled, id=$id, messageQueueUrl=$messageQueueUrl, name=$name, reservedForBuild=$reservedForBuild, server=$server, status=$status, statusMessage=$statusMessage, updatedDate=$updatedDate, uri=$uri, url=$url, ]';
  }

  BuildAgent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildDirectory'] == null) {
      buildDirectory = null;
    } else {
          buildDirectory = json['buildDirectory'];
    }
    if (json['controller'] == null) {
      controller = null;
    } else {
      controller = XamlBuildControllerReference.fromJson(json['controller']);
    }
    if (json['createdDate'] == null) {
      createdDate = null;
    } else {
      createdDate = DateTime.parse(json['createdDate']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['messageQueueUrl'] == null) {
      messageQueueUrl = null;
    } else {
          messageQueueUrl = json['messageQueueUrl'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['reservedForBuild'] == null) {
      reservedForBuild = null;
    } else {
          reservedForBuild = json['reservedForBuild'];
    }
    if (json['server'] == null) {
      server = null;
    } else {
      server = XamlBuildServerReference.fromJson(json['server']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['statusMessage'] == null) {
      statusMessage = null;
    } else {
          statusMessage = json['statusMessage'];
    }
    if (json['updatedDate'] == null) {
      updatedDate = null;
    } else {
      updatedDate = DateTime.parse(json['updatedDate']);
    }
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildDirectory != null)
      json['buildDirectory'] = buildDirectory;
    if (controller != null)
      json['controller'] = controller;
    if (createdDate != null)
      json['createdDate'] = createdDate == null ? null : createdDate.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (enabled != null)
      json['enabled'] = enabled;
    if (id != null)
      json['id'] = id;
    if (messageQueueUrl != null)
      json['messageQueueUrl'] = messageQueueUrl;
    if (name != null)
      json['name'] = name;
    if (reservedForBuild != null)
      json['reservedForBuild'] = reservedForBuild;
    if (server != null)
      json['server'] = server;
    if (status != null)
      json['status'] = status;
    if (statusMessage != null)
      json['statusMessage'] = statusMessage;
    if (updatedDate != null)
      json['updatedDate'] = updatedDate == null ? null : updatedDate.toUtc().toIso8601String();
    if (uri != null)
      json['uri'] = uri;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<BuildAgent> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildAgent>() : json.map((value) => BuildAgent.fromJson(value)).toList();
  }

  static Map<String, BuildAgent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildAgent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildAgent.fromJson(value));
    }
    return map;
  }
}

