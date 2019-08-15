part of azure_devops_sdk.api;

class PipelineProcess {
  /* Pipeline process type. */
  String type = null;
  //enum typeEnum {  designer,  yaml,  };{
  PipelineProcess();

  @override
  String toString() {
    return 'PipelineProcess[type=$type, ]';
  }

  PipelineProcess.fromJson(Map<String, dynamic> json) {
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

  static List<PipelineProcess> listFromJson(List<dynamic> json) {
    return json == null ? List<PipelineProcess>() : json.map((value) => PipelineProcess.fromJson(value)).toList();
  }

  static Map<String, PipelineProcess> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PipelineProcess>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PipelineProcess.fromJson(value));
    }
    return map;
  }
}

