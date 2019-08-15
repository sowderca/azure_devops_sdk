part of azure_devops_sdk.api;

class TemporaryDataCreatedDTO {
  
  int expirationSeconds = null;
  
  String origin = null;
  
  Object value = null;
  TemporaryDataCreatedDTO();

  @override
  String toString() {
    return 'TemporaryDataCreatedDTO[expirationSeconds=$expirationSeconds, origin=$origin, value=$value, ]';
  }

  TemporaryDataCreatedDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['expirationSeconds'] == null) {
      expirationSeconds = null;
    } else {
          expirationSeconds = json['expirationSeconds'];
    }
    if (json['origin'] == null) {
      origin = null;
    } else {
          origin = json['origin'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (expirationSeconds != null)
      json['expirationSeconds'] = expirationSeconds;
    if (origin != null)
      json['origin'] = origin;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TemporaryDataCreatedDTO> listFromJson(List<dynamic> json) {
    return json == null ? List<TemporaryDataCreatedDTO>() : json.map((value) => TemporaryDataCreatedDTO.fromJson(value)).toList();
  }

  static Map<String, TemporaryDataCreatedDTO> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemporaryDataCreatedDTO>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemporaryDataCreatedDTO.fromJson(value));
    }
    return map;
  }
}

