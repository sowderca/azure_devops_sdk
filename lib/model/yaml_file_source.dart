part of azure_devops_sdk.api;

class YamlFileSource {
  /* Gets or sets definition reference. e.g. {\"project\":{\"id\":\"fed755ea-49c5-4399-acea-fd5b5aa90a6c\",\"name\":\"myProject\"},\"definition\":{\"id\":\"1\",\"name\":\"mybuildDefinition\"},\"connection\":{\"id\":\"1\",\"name\":\"myConnection\"}} */
  Map<String, YamlSourceReference> sourceReference = {};
  
  String type = null;
  //enum typeEnum {  none,  tfsGit,  };{
  YamlFileSource();

  @override
  String toString() {
    return 'YamlFileSource[sourceReference=$sourceReference, type=$type, ]';
  }

  YamlFileSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sourceReference'] == null) {
      sourceReference = null;
    } else {
      sourceReference = YamlSourceReference.mapFromJson(json['sourceReference']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sourceReference != null)
      json['sourceReference'] = sourceReference;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<YamlFileSource> listFromJson(List<dynamic> json) {
    return json == null ? List<YamlFileSource>() : json.map((value) => YamlFileSource.fromJson(value)).toList();
  }

  static Map<String, YamlFileSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, YamlFileSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = YamlFileSource.fromJson(value));
    }
    return map;
  }
}

