part of azure_devops_sdk.api;

class GitBaseVersionDescriptor {
  /* Version string identifier (name of tag/branch, SHA1 of commit) */
  String version = null;
  /* Version options - Specify additional modifiers to version (e.g Previous) */
  String versionOptions = null;
  //enum versionOptionsEnum {  none,  previousChange,  firstParent,  };{
  /* Version type (branch, tag, or commit). Determines how Id is interpreted */
  String versionType = null;
  //enum versionTypeEnum {  branch,  tag,  commit,  };{
  GitBaseVersionDescriptor();

  @override
  String toString() {
    return 'GitBaseVersionDescriptor[version=$version, versionOptions=$versionOptions, versionType=$versionType, ]';
  }

  GitBaseVersionDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (version != null)
      json['version'] = version;
    if (versionOptions != null)
      json['versionOptions'] = versionOptions;
    if (versionType != null)
      json['versionType'] = versionType;
    return json;
  }

  static List<GitBaseVersionDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<GitBaseVersionDescriptor>() : json.map((value) => GitBaseVersionDescriptor.fromJson(value)).toList();
  }

  static Map<String, GitBaseVersionDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitBaseVersionDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitBaseVersionDescriptor.fromJson(value));
    }
    return map;
  }
}

