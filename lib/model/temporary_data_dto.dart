part of azure_devops_sdk.api;

class TemporaryDataDTO {
  
  int expirationSeconds = null;
  
  String origin = null;
  
  Object value = null;
  TemporaryDataDTO();

  @override
  String toString() {
    return 'TemporaryDataDTO[expirationSeconds=$expirationSeconds, origin=$origin, value=$value, ]';
  }

  TemporaryDataDTO.fromJson(Map<String, dynamic> json) {
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

  static List<TemporaryDataDTO> listFromJson(List<dynamic> json) {
    return json == null ? List<TemporaryDataDTO>() : json.map((value) => TemporaryDataDTO.fromJson(value)).toList();
  }

  static Map<String, TemporaryDataDTO> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemporaryDataDTO>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemporaryDataDTO.fromJson(value));
    }
    return map;
  }
}

