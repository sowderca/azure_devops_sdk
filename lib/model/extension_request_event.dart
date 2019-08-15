part of azure_devops_sdk.api;

class ExtensionRequestEvent {
  
  PublishedExtension extension = null;
  
  ExtensionHost host = null;
  /* Name of the collection for which the extension was requested */
  String hostName = null;
  
  ExtensionRequestUrls links = null;
  
  ExtensionRequest request = null;
  /* The type of update that was made */
  String updateType = null;
  //enum updateTypeEnum {  created,  approved,  rejected,  deleted,  };{
  ExtensionRequestEvent();

  @override
  String toString() {
    return 'ExtensionRequestEvent[extension=$extension, host=$host, hostName=$hostName, links=$links, request=$request, updateType=$updateType, ]';
  }

  ExtensionRequestEvent.fromJson(Map<String, dynamic> json) {
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
    if (json['hostName'] == null) {
      hostName = null;
    } else {
          hostName = json['hostName'];
    }
    if (json['links'] == null) {
      links = null;
    } else {
      links = ExtensionRequestUrls.fromJson(json['links']);
    }
    if (json['request'] == null) {
      request = null;
    } else {
      request = ExtensionRequest.fromJson(json['request']);
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
    if (hostName != null)
      json['hostName'] = hostName;
    if (links != null)
      json['links'] = links;
    if (request != null)
      json['request'] = request;
    if (updateType != null)
      json['updateType'] = updateType;
    return json;
  }

  static List<ExtensionRequestEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionRequestEvent>() : json.map((value) => ExtensionRequestEvent.fromJson(value)).toList();
  }

  static Map<String, ExtensionRequestEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionRequestEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionRequestEvent.fromJson(value));
    }
    return map;
  }
}

