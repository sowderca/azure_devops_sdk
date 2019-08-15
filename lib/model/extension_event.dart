part of azure_devops_sdk.api;

class ExtensionEvent {
  
  PublishedExtension extension = null;
  /* The current version of the extension that was updated */
  String extensionVersion = null;
  
  ExtensionHost host = null;
  
  ExtensionEventUrls links = null;
  
  IdentityRef modifiedBy = null;
  /* The type of update that was made */
  String updateType = null;
  //enum updateTypeEnum {  installed,  uninstalled,  enabled,  disabled,  versionUpdated,  actionRequired,  actionResolved,  };{
  ExtensionEvent();

  @override
  String toString() {
    return 'ExtensionEvent[extension=$extension, extensionVersion=$extensionVersion, host=$host, links=$links, modifiedBy=$modifiedBy, updateType=$updateType, ]';
  }

  ExtensionEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extension'] == null) {
      extension = null;
    } else {
      extension = PublishedExtension.fromJson(json['extension']);
    }
    if (json['extensionVersion'] == null) {
      extensionVersion = null;
    } else {
          extensionVersion = json['extensionVersion'];
    }
    if (json['host'] == null) {
      host = null;
    } else {
      host = ExtensionHost.fromJson(json['host']);
    }
    if (json['links'] == null) {
      links = null;
    } else {
      links = ExtensionEventUrls.fromJson(json['links']);
    }
    if (json['modifiedBy'] == null) {
      modifiedBy = null;
    } else {
      modifiedBy = IdentityRef.fromJson(json['modifiedBy']);
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
    if (extensionVersion != null)
      json['extensionVersion'] = extensionVersion;
    if (host != null)
      json['host'] = host;
    if (links != null)
      json['links'] = links;
    if (modifiedBy != null)
      json['modifiedBy'] = modifiedBy;
    if (updateType != null)
      json['updateType'] = updateType;
    return json;
  }

  static List<ExtensionEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionEvent>() : json.map((value) => ExtensionEvent.fromJson(value)).toList();
  }

  static Map<String, ExtensionEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionEvent.fromJson(value));
    }
    return map;
  }
}

