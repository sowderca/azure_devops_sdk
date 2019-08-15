part of azure_devops_sdk.api;

class GitVersionDescriptor {
  /* Version string identifier (name of tag/branch, SHA1 of commit) */
  String version = null;
  /* Version options - Specify additional modifiers to version (e.g Previous) */
  String versionOptions = null;
  //enum versionOptionsEnum {  none,  previousChange,  firstParent,  };{
  /* Version type (branch, tag, or commit). Determines how Id is interpreted */
  String versionType = null;
  //enum versionTypeEnum {  branch,  tag,  commit,  };{
  GitVersionDescriptor();

  @override
  String toString() {
    return 'GitVersionDescriptor[version=$version, versionOptions=$versionOptions, versionType=$versionType, ]';
  }

  GitVersionDescriptor.fromJson(Map<String, dynamic> json) {
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

  static List<GitVersionDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<GitVersionDescriptor>() : json.map((value) => GitVersionDescriptor.fromJson(value)).toList();
  }

  static Map<String, GitVersionDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitVersionDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitVersionDescriptor.fromJson(value));
    }
    return map;
  }
}

