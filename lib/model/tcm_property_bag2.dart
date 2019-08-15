part of azure_devops_sdk.api;

class TCMPropertyBag2 {
  
  int artifactId = null;
  
  int artifactType = null;
  
  String name = null;
  
  String value = null;
  TCMPropertyBag2();

  @override
  String toString() {
    return 'TCMPropertyBag2[artifactId=$artifactId, artifactType=$artifactType, name=$name, value=$value, ]';
  }

  TCMPropertyBag2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (artifactType != null)
      json['artifactType'] = artifactType;
    if (name != null)
      json['name'] = name;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TCMPropertyBag2> listFromJson(List<dynamic> json) {
    return json == null ? List<TCMPropertyBag2>() : json.map((value) => TCMPropertyBag2.fromJson(value)).toList();
  }

  static Map<String, TCMPropertyBag2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TCMPropertyBag2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TCMPropertyBag2.fromJson(value));
    }
    return map;
  }
}

