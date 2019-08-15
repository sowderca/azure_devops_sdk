part of azure_devops_sdk.api;

class ExtensionRequestsEvent {
  
  PublishedExtension extension = null;
  
  ExtensionHost host = null;
  
  ExtensionRequestUrls links = null;
  /* The extension request object */
  List<ExtensionRequest> requests = [];
  /* The type of update that was made */
  String updateType = null;
  //enum updateTypeEnum {  created,  approved,  rejected,  deleted,  };{
  ExtensionRequestsEvent();

  @override
  String toString() {
    return 'ExtensionRequestsEvent[extension=$extension, host=$host, links=$links, requests=$requests, updateType=$updateType, ]';
  }

  ExtensionRequestsEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extension'] == null) {
      extension = null;
    } else {
      extension = PublishedExtension.fromJson(json['extension']);
    }
    if (json['host'] == null) {
      host = null;
    } else {
      host = ExtensionHost.fromJson(json['host']);
    }
    if (json['links'] == null) {
      links = null;
    } else {
      links = ExtensionRequestUrls.fromJson(json['links']);
    }
    if (json['requests'] == null) {
      requests = null;
    } else {
      requests = ExtensionRequest.listFromJson(json['requests']);
    }
    if (json['updateType'] == null) {
      updateType = null;
    } else {
          updateType = json['updateType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extension != null)
      json['extension'] = extension;
    if (host != null)
      json['host'] = host;
    if (links != null)
      json['links'] = links;
    if (requests != null)
      json['requests'] = requests;
    if (updateType != null)
      json['updateType'] = updateType;
    return json;
  }

  static List<ExtensionRequestsEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionRequestsEvent>() : json.map((value) => ExtensionRequestsEvent.fromJson(value)).toList();
  }

  static Map<String, ExtensionRequestsEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionRequestsEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionRequestsEvent.fromJson(value));
    }
    return map;
  }
}

