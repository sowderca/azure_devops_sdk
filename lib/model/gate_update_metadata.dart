part of azure_devops_sdk.api;

class GateUpdateMetadata {
  /* Comment. */
  String comment = null;
  /* Name of gate to be ignored. */
  List<String> gatesToIgnore = [];
  GateUpdateMetadata();

  @override
  String toString() {
    return 'GateUpdateMetadata[comment=$comment, gatesToIgnore=$gatesToIgnore, ]';
  }

  GateUpdateMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['gatesToIgnore'] == null) {
      gatesToIgnore = null;
    } else {
      gatesToIgnore = (json['gatesToIgnore'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (gatesToIgnore != null)
      json['gatesToIgnore'] = gatesToIgnore;
    return json;
  }

  static List<GateUpdateMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<GateUpdateMetadata>() : json.map((value) => GateUpdateMetadata.fromJson(value)).toList();
  }

  static Map<String, GateUpdateMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GateUpdateMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GateUpdateMetadata.fromJson(value));
    }
    return map;
  }
}

