part of azure_devops_sdk.api;

class TfvcMappingFilter {
  
  bool exclude = null;
  
  String serverPath = null;
  TfvcMappingFilter();

  @override
  String toString() {
    return 'TfvcMappingFilter[exclude=$exclude, serverPath=$serverPath, ]';
  }

  TfvcMappingFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['exclude'] == null) {
      exclude = null;
    } else {
          exclude = json['exclude'];
    }
    if (json['serverPath'] == null) {
      serverPath = null;
    } else {
          serverPath = json['serverPath'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exclude != null)
      json['exclude'] = exclude;
    if (serverPath != null)
      json['serverPath'] = serverPath;
    return json;
  }

  static List<TfvcMappingFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcMappingFilter>() : json.map((value) => TfvcMappingFilter.fromJson(value)).toList();
  }

  static Map<String, TfvcMappingFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcMappingFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcMappingFilter.fromJson(value));
    }
    return map;
  }
}

