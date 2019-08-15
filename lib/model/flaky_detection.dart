part of azure_devops_sdk.api;

class FlakyDetection {
  
  FlakyDetectionPipelines flakyDetectionPipelines = null;
  /* FlakyDetectionType defines Detection type i.e. 1. System or 2. Manual. */
  String flakyDetectionType = null;
  //enum flakyDetectionTypeEnum {  custom,  system,  };{
  FlakyDetection();

  @override
  String toString() {
    return 'FlakyDetection[flakyDetectionPipelines=$flakyDetectionPipelines, flakyDetectionType=$flakyDetectionType, ]';
  }

  FlakyDetection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['flakyDetectionPipelines'] == null) {
      flakyDetectionPipelines = null;
    } else {
      flakyDetectionPipelines = FlakyDetectionPipelines.fromJson(json['flakyDetectionPipelines']);
    }
    if (json['flakyDetectionType'] == null) {
      flakyDetectionType = null;
    } else {
          flakyDetectionType = json['flakyDetectionType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (flakyDetectionPipelines != null)
      json['flakyDetectionPipelines'] = flakyDetectionPipelines;
    if (flakyDetectionType != null)
      json['flakyDetectionType'] = flakyDetectionType;
    return json;
  }

  static List<FlakyDetection> listFromJson(List<dynamic> json) {
    return json == null ? List<FlakyDetection>() : json.map((value) => FlakyDetection.fromJson(value)).toList();
  }

  static Map<String, FlakyDetection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FlakyDetection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FlakyDetection.fromJson(value));
    }
    return map;
  }
}

