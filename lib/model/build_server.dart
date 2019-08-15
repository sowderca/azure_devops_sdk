part of azure_devops_sdk.api;

class BuildServer {
  
  List<BuildAgentReference> agents = [];
  
  XamlBuildControllerReference controller = null;
  
  int id = null;
  
  bool isVirtual = null;
  
  String messageQueueUrl = null;
  
  String name = null;
  
  bool requireClientCertificates = null;
  
  String status = null;
  //enum statusEnum {  online,  offline,  };{
  
  DateTime statusChangedDate = null;
  
  String uri = null;
  
  String url = null;
  
  int version = null;
  BuildServer();

  @override
  String toString() {
    return 'BuildServer[agents=$agents, controller=$controller, id=$id, isVirtual=$isVirtual, messageQueueUrl=$messageQueueUrl, name=$name, requireClientCertificates=$requireClientCertificates, status=$status, statusChangedDate=$statusChangedDate, uri=$uri, url=$url, version=$version, ]';
  }

  BuildServer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agents'] == null) {
      agents = null;
    } else {
      agents = BuildAgentReference.listFromJson(json['agents']);
    }
    if (json['controller'] == null) {
      controller = null;
    } else {
      controller = XamlBuildControllerReference.fromJson(json['controller']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isVirtual'] == null) {
      isVirtual = null;
    } else {
          isVirtual = json['isVirtual'];
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
    if (json['requireClientCertificates'] == null) {
      requireClientCertificates = null;
    } else {
          requireClientCertificates = json['requireClientCertificates'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['statusChangedDate'] == null) {
      statusChangedDate = null;
    } else {
      statusChangedDate = DateTime.parse(json['statusChangedDate']);
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
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agents != null)
      json['agents'] = agents;
    if (controller != null)
      json['controller'] = controller;
    if (id != null)
      json['id'] = id;
    if (isVirtual != null)
      json['isVirtual'] = isVirtual;
    if (messageQueueUrl != null)
      json['messageQueueUrl'] = messageQueueUrl;
    if (name != null)
      json['name'] = name;
    if (requireClientCertificates != null)
      json['requireClientCertificates'] = requireClientCertificates;
    if (status != null)
      json['status'] = status;
    if (statusChangedDate != null)
      json['statusChangedDate'] = statusChangedDate == null ? null : statusChangedDate.toUtc().toIso8601String();
    if (uri != null)
      json['uri'] = uri;
    if (url != null)
      json['url'] = url;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<BuildServer> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildServer>() : json.map((value) => BuildServer.fromJson(value)).toList();
  }

  static Map<String, BuildServer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildServer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildServer.fromJson(value));
    }
    return map;
  }
}

