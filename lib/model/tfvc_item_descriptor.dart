part of azure_devops_sdk.api;

class TfvcItemDescriptor {
  
  String path = null;
  
  String recursionLevel = null;
  //enum recursionLevelEnum {  none,  oneLevel,  oneLevelPlusNestedEmptyFolders,  full,  };{
  
  String version = null;
  
  String versionOption = null;
  //enum versionOptionEnum {  none,  previous,  useRename,  };{
  
  String versionType = null;
  //enum versionTypeEnum {  none,  changeset,  shelveset,  change,  date,  latest,  tip,  mergeSource,  };{
  TfvcItemDescriptor();

  @override
  String toString() {
    return 'TfvcItemDescriptor[path=$path, recursionLevel=$recursionLevel, version=$version, versionOption=$versionOption, versionType=$versionType, ]';
  }

  TfvcItemDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['recursionLevel'] == null) {
      recursionLevel = null;
    } else {
          recursionLevel = json['recursionLevel'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['versionOption'] == null) {
      versionOption = null;
    } else {
          versionOption = json['versionOption'];
    }
    if (json['versionType'] == null) {
      versionType = null;
    } else {
          versionType = json['versionType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (path != null)
      json['path'] = path;
    if (recursionLevel != null)
      json['recursionLevel'] = recursionLevel;
    if (version != null)
      json['version'] = version;
    if (versionOption != null)
      json['versionOption'] = versionOption;
    if (versionType != null)
      json['versionType'] = versionType;
    return json;
  }

  static List<TfvcItemDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcItemDescriptor>() : json.map((value) => TfvcItemDescriptor.fromJson(value)).toList();
  }

  static Map<String, TfvcItemDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcItemDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcItemDescriptor.fromJson(value));
    }
    return map;
  }
}

