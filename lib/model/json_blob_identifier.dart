part of azure_devops_sdk.api;

class JsonBlobIdentifier {
  
  List<String> identifierValue = [];
  JsonBlobIdentifier();

  @override
  String toString() {
    return 'JsonBlobIdentifier[identifierValue=$identifierValue, ]';
  }

  JsonBlobIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['identifierValue'] == null) {
      identifierValue = null;
    } else {
      identifierValue = (json['identifierValue'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (identifierValue != null)
      json['identifierValue'] = identifierValue;
    return json;
  }

  static List<JsonBlobIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? List<JsonBlobIdentifier>() : json.map((value) => JsonBlobIdentifier.fromJson(value)).toList();
  }

  static Map<String, JsonBlobIdentifier> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JsonBlobIdentifier>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JsonBlobIdentifier.fromJson(value));
    }
    return map;
  }
}

