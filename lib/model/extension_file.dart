part of azure_devops_sdk.api;

class ExtensionFile {
  
  String assetType = null;
  
  String language = null;
  
  String source = null;
  ExtensionFile();

  @override
  String toString() {
    return 'ExtensionFile[assetType=$assetType, language=$language, source=$source, ]';
  }

  ExtensionFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assetType'] == null) {
      assetType = null;
    } else {
          assetType = json['assetType'];
    }
    if (json['language'] == null) {
      language = null;
    } else {
          language = json['language'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assetType != null)
      json['assetType'] = assetType;
    if (language != null)
      json['language'] = language;
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<ExtensionFile> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionFile>() : json.map((value) => ExtensionFile.fromJson(value)).toList();
  }

  static Map<String, ExtensionFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionFile.fromJson(value));
    }
    return map;
  }
}

