part of azure_devops_sdk.api;

class FlakyDetectionPipelines {
  /* AllowedPipelines - List All Pipelines allowed for detection. */
  List<int> allowedPipelines = [];
  /* IsAllPipelinesAllowed if users configure all system's pipelines. */
  bool isAllPipelinesAllowed = null;
  FlakyDetectionPipelines();

  @override
  String toString() {
    return 'FlakyDetectionPipelines[allowedPipelines=$allowedPipelines, isAllPipelinesAllowed=$isAllPipelinesAllowed, ]';
  }

  FlakyDetectionPipelines.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowedPipelines'] == null) {
      allowedPipelines = null;
    } else {
      allowedPipelines = (json['allowedPipelines'] as List).cast<int>();
    }
    if (json['isAllPipelinesAllowed'] == null) {
      isAllPipelinesAllowed = null;
    } else {
          isAllPipelinesAllowed = json['isAllPipelinesAllowed'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowedPipelines != null)
      json['allowedPipelines'] = allowedPipelines;
    if (isAllPipelinesAllowed != null)
      json['isAllPipelinesAllowed'] = isAllPipelinesAllowed;
    return json;
  }

  static List<FlakyDetectionPipelines> listFromJson(List<dynamic> json) {
    return json == null ? List<FlakyDetectionPipelines>() : json.map((value) => FlakyDetectionPipelines.fromJson(value)).toList();
  }

  static Map<String, FlakyDetectionPipelines> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FlakyDetectionPipelines>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FlakyDetectionPipelines.fromJson(value));
    }
    return map;
  }
}

