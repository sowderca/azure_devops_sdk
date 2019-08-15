part of azure_devops_sdk.api;

class ProtocolMetadata {
  /* Extended metadata for a specific package type, formatted to the associated schema version definition. */
  Object data = null;
  /* Schema version. */
  int schemaVersion = null;
  ProtocolMetadata();

  @override
  String toString() {
    return 'ProtocolMetadata[data=$data, schemaVersion=$schemaVersion, ]';
  }

  ProtocolMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['schemaVersion'] == null) {
      schemaVersion = null;
    } else {
          schemaVersion = json['schemaVersion'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (schemaVersion != null)
      json['schemaVersion'] = schemaVersion;
    return json;
  }

  static List<ProtocolMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ProtocolMetadata>() : json.map((value) => ProtocolMetadata.fromJson(value)).toList();
  }

  static Map<String, ProtocolMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProtocolMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProtocolMetadata.fromJson(value));
    }
    return map;
  }
}

