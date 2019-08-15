part of azure_devops_sdk.api;

class ExtensionEventCallbackCollection {
  
  ExtensionEventCallback postDisable = null;
  
  ExtensionEventCallback postEnable = null;
  
  ExtensionEventCallback postInstall = null;
  
  ExtensionEventCallback postUninstall = null;
  
  ExtensionEventCallback postUpdate = null;
  
  ExtensionEventCallback preInstall = null;
  
  ExtensionEventCallback versionCheck = null;
  ExtensionEventCallbackCollection();

  @override
  String toString() {
    return 'ExtensionEventCallbackCollection[postDisable=$postDisable, postEnable=$postEnable, postInstall=$postInstall, postUninstall=$postUninstall, postUpdate=$postUpdate, preInstall=$preInstall, versionCheck=$versionCheck, ]';
  }

  ExtensionEventCallbackCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['postDisable'] == null) {
      postDisable = null;
    } else {
      postDisable = ExtensionEventCallback.fromJson(json['postDisable']);
    }
    if (json['postEnable'] == null) {
      postEnable = null;
    } else {
      postEnable = ExtensionEventCallback.fromJson(json['postEnable']);
    }
    if (json['postInstall'] == null) {
      postInstall = null;
    } else {
      postInstall = ExtensionEventCallback.fromJson(json['postInstall']);
    }
    if (json['postUninstall'] == null) {
      postUninstall = null;
    } else {
      postUninstall = ExtensionEventCallback.fromJson(json['postUninstall']);
    }
    if (json['postUpdate'] == null) {
      postUpdate = null;
    } else {
      postUpdate = ExtensionEventCallback.fromJson(json['postUpdate']);
    }
    if (json['preInstall'] == null) {
      preInstall = null;
    } else {
      preInstall = ExtensionEventCallback.fromJson(json['preInstall']);
    }
    if (json['versionCheck'] == null) {
      versionCheck = null;
    } else {
      versionCheck = ExtensionEventCallback.fromJson(json['versionCheck']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (postDisable != null)
      json['postDisable'] = postDisable;
    if (postEnable != null)
      json['postEnable'] = postEnable;
    if (postInstall != null)
      json['postInstall'] = postInstall;
    if (postUninstall != null)
      json['postUninstall'] = postUninstall;
    if (postUpdate != null)
      json['postUpdate'] = postUpdate;
    if (preInstall != null)
      json['preInstall'] = preInstall;
    if (versionCheck != null)
      json['versionCheck'] = versionCheck;
    return json;
  }

  static List<ExtensionEventCallbackCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionEventCallbackCollection>() : json.map((value) => ExtensionEventCallbackCollection.fromJson(value)).toList();
  }

  static Map<String, ExtensionEventCallbackCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionEventCallbackCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionEventCallbackCollection.fromJson(value));
    }
    return map;
  }
}

