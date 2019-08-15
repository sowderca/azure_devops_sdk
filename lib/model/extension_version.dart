part of azure_devops_sdk.api;

class ExtensionVersion {
  
  String assetUri = null;
  
  List<ExtensionBadge> badges = [];
  
  String fallbackAssetUri = null;
  
  List<ExtensionFile> files = [];
  
  String flags = null;
  //enum flagsEnum {  none,  validated,  };{
  
  DateTime lastUpdated = null;
  
  List<Object> properties = [];
  
  String validationResultMessage = null;
  
  String version = null;
  
  String versionDescription = null;
  ExtensionVersion();

  @override
  String toString() {
    return 'ExtensionVersion[assetUri=$assetUri, badges=$badges, fallbackAssetUri=$fallbackAssetUri, files=$files, flags=$flags, lastUpdated=$lastUpdated, properties=$properties, validationResultMessage=$validationResultMessage, version=$version, versionDescription=$versionDescription, ]';
  }

  ExtensionVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assetUri'] == null) {
      assetUri = null;
    } else {
          assetUri = json['assetUri'];
    }
    if (json['badges'] == null) {
      badges = null;
    } else {
      badges = ExtensionBadge.listFromJson(json['badges']);
    }
    if (json['fallbackAssetUri'] == null) {
      fallbackAssetUri = null;
    } else {
          fallbackAssetUri = json['fallbackAssetUri'];
    }
    if (json['files'] == null) {
      files = null;
    } else {
      files = ExtensionFile.listFromJson(json['files']);
    }
    if (json['flags'] == null) {
      flags = null;
    } else {
          flags = json['flags'];
    }
    if (json['lastUpdated'] == null) {
      lastUpdated = null;
    } else {
      lastUpdated = DateTime.parse(json['lastUpdated']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = Object.listFromJson(json['properties']);
    }
    if (json['validationResultMessage'] == null) {
      validationResultMessage = null;
    } else {
          validationResultMessage = json['validationResultMessage'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['versionDescription'] == null) {
      versionDescription = null;
    } else {
          versionDescription = json['versionDescription'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assetUri != null)
      json['assetUri'] = assetUri;
    if (badges != null)
      json['badges'] = badges;
    if (fallbackAssetUri != null)
      json['fallbackAssetUri'] = fallbackAssetUri;
    if (files != null)
      json['files'] = files;
    if (flags != null)
      json['flags'] = flags;
    if (lastUpdated != null)
      json['lastUpdated'] = lastUpdated == null ? null : lastUpdated.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (validationResultMessage != null)
      json['validationResultMessage'] = validationResultMessage;
    if (version != null)
      json['version'] = version;
    if (versionDescription != null)
      json['versionDescription'] = versionDescription;
    return json;
  }

  static List<ExtensionVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionVersion>() : json.map((value) => ExtensionVersion.fromJson(value)).toList();
  }

  static Map<String, ExtensionVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionVersion.fromJson(value));
    }
    return map;
  }
}

