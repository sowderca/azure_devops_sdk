part of azure_devops_sdk.api;

class MappingDetails {
  /* The local path. */
  String localPath = null;
  /* The mapping type. */
  String mappingType = null;
  /* The server path. */
  String serverPath = null;
  MappingDetails();

  @override
  String toString() {
    return 'MappingDetails[localPath=$localPath, mappingType=$mappingType, serverPath=$serverPath, ]';
  }

  MappingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['localPath'] == null) {
      localPath = null;
    } else {
          localPath = json['localPath'];
    }
    if (json['mappingType'] == null) {
      mappingType = null;
    } else {
          mappingType = json['mappingType'];
    }
    if (json['serverPath'] == null) {
      serverPath = null;
    } else {
          serverPath = json['serverPath'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (localPath != null)
      json['localPath'] = localPath;
    if (mappingType != null)
      json['mappingType'] = mappingType;
    if (serverPath != null)
      json['serverPath'] = serverPath;
    return json;
  }

  static List<MappingDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<MappingDetails>() : json.map((value) => MappingDetails.fromJson(value)).toList();
  }

  static Map<String, MappingDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MappingDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MappingDetails.fromJson(value));
    }
    return map;
  }
}

