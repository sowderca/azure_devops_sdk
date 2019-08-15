part of azure_devops_sdk.api;

class YamlPipelineProcess {
  /* Pipeline process type. */
  String type = null;
  //enum typeEnum {  designer,  yaml,  };{
  YamlPipelineProcess();

  @override
  String toString() {
    return 'YamlPipelineProcess[type=$type, ]';
  }

  YamlPipelineProcess.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<YamlPipelineProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<YamlPipelineProcess>() : json.map((value) => YamlPipelineProcess.fromJson(value)).toList();
  }

  static Map<String, YamlPipelineProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, YamlPipelineProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = YamlPipelineProcess.fromJson(value));
    }
    return map;
  }
}

