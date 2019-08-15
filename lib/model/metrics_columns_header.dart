part of azure_devops_sdk.api;

class MetricsColumnsHeader {
  /* Properties of deployment group for which metrics are provided. E.g. 1: LastJobStatus E.g. 2: TargetState */
  List<MetricsColumnMetaData> dimensions = [];
  /* The types of metrics. E.g. 1: total count of deployment targets. E.g. 2: Average time of deployment to the deployment targets. */
  List<MetricsColumnMetaData> metrics = [];
  MetricsColumnsHeader();

  @override
  String toString() {
    return 'MetricsColumnsHeader[dimensions=$dimensions, metrics=$metrics, ]';
  }

  MetricsColumnsHeader.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dimensions'] == null) {
      dimensions = null;
    } else {
      dimensions = MetricsColumnMetaData.listFromJson(json['dimensions']);
    }
    if (json['metrics'] == null) {
      metrics = null;
    } else {
      metrics = MetricsColumnMetaData.listFromJson(json['metrics']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dimensions != null)
      json['dimensions'] = dimensions;
    if (metrics != null)
      json['metrics'] = metrics;
    return json;
  }

  static List<MetricsColumnsHeader> listFromJson(List<dynamic> json) {
    return json == null ? List<MetricsColumnsHeader>() : json.map((value) => MetricsColumnsHeader.fromJson(value)).toList();
  }

  static Map<String, MetricsColumnsHeader> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MetricsColumnsHeader>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MetricsColumnsHeader.fromJson(value));
    }
    return map;
  }
}

