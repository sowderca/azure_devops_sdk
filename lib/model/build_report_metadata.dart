part of azure_devops_sdk.api;

class BuildReportMetadata {
  /* The Id of the build. */
  int buildId = null;
  /* The content of the report. */
  String content = null;
  /* The type of the report. */
  String type = null;
  BuildReportMetadata();

  @override
  String toString() {
    return 'BuildReportMetadata[buildId=$buildId, content=$content, type=$type, ]';
  }

  BuildReportMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
    if (json['content'] == null) {
      content = null;
    } else {
          content = json['content'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildId != null)
      json['buildId'] = buildId;
    if (content != null)
      json['content'] = content;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<BuildReportMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildReportMetadata>() : json.map((value) => BuildReportMetadata.fromJson(value)).toList();
  }

  static Map<String, BuildReportMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildReportMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildReportMetadata.fromJson(value));
    }
    return map;
  }
}

