part of azure_devops_sdk.api;

class TfvcVersionDescriptor {
  
  String version = null;
  
  String versionOption = null;
  //enum versionOptionEnum {  none,  previous,  useRename,  };{
  
  String versionType = null;
  //enum versionTypeEnum {  none,  changeset,  shelveset,  change,  date,  latest,  tip,  mergeSource,  };{
  TfvcVersionDescriptor();

  @override
  String toString() {
    return 'TfvcVersionDescriptor[version=$version, versionOption=$versionOption, versionType=$versionType, ]';
  }

  TfvcVersionDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (version != null)
      json['version'] = version;
    if (versionOption != null)
      json['versionOption'] = versionOption;
    if (versionType != null)
      json['versionType'] = versionType;
    return json;
  }

  static List<TfvcVersionDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcVersionDescriptor>() : json.map((value) => TfvcVersionDescriptor.fromJson(value)).toList();
  }

  static Map<String, TfvcVersionDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcVersionDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcVersionDescriptor.fromJson(value));
    }
    return map;
  }
}

