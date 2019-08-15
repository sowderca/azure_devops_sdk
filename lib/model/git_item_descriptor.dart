part of azure_devops_sdk.api;

class GitItemDescriptor {
  /* Path to item */
  String path = null;
  /* Specifies whether to include children (OneLevel), all descendants (Full), or None */
  String recursionLevel = null;
  //enum recursionLevelEnum {  none,  oneLevel,  oneLevelPlusNestedEmptyFolders,  full,  };{
  /* Version string (interpretation based on VersionType defined in subclass */
  String version = null;
  /* Version modifiers (e.g. previous) */
  String versionOptions = null;
  //enum versionOptionsEnum {  none,  previousChange,  firstParent,  };{
  /* How to interpret version (branch,tag,commit) */
  String versionType = null;
  //enum versionTypeEnum {  branch,  tag,  commit,  };{
  GitItemDescriptor();

  @override
  String toString() {
    return 'GitItemDescriptor[path=$path, recursionLevel=$recursionLevel, version=$version, versionOptions=$versionOptions, versionType=$versionType, ]';
  }

  GitItemDescriptor.fromJson(Map<String, dynamic> json) {
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
    if (json['versionOptions'] == null) {
      versionOptions = null;
    } else {
          versionOptions = json['versionOptions'];
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
    if (versionOptions != null)
      json['versionOptions'] = versionOptions;
    if (versionType != null)
      json['versionType'] = versionType;
    return json;
  }

  static List<GitItemDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<GitItemDescriptor>() : json.map((value) => GitItemDescriptor.fromJson(value)).toList();
  }

  static Map<String, GitItemDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitItemDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitItemDescriptor.fromJson(value));
    }
    return map;
  }
}

