part of azure_devops_sdk.api;

class JsonBlobBlockHash {
  /* Array of hash bytes. */
  List<String> hashBytes = [];
  JsonBlobBlockHash();

  @override
  String toString() {
    return 'JsonBlobBlockHash[hashBytes=$hashBytes, ]';
  }

  JsonBlobBlockHash.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['hashBytes'] == null) {
      hashBytes = null;
    } else {
      hashBytes = (json['hashBytes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hashBytes != null)
      json['hashBytes'] = hashBytes;
    return json;
  }

  static List<JsonBlobBlockHash> listFromJson(List<dynamic> json) {
    return json == null ? List<JsonBlobBlockHash>() : json.map((value) => JsonBlobBlockHash.fromJson(value)).toList();
  }

  static Map<String, JsonBlobBlockHash> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JsonBlobBlockHash>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JsonBlobBlockHash.fromJson(value));
    }
    return map;
  }
}

