part of azure_devops_sdk.api;

class MetricsRow {
  /* The values of the properties mentioned as 'Dimensions' in column header. E.g. 1: For a property 'LastJobStatus' - metrics will be provided for 'passed', 'failed', etc. E.g. 2: For a property 'TargetState' - metrics will be provided for 'online', 'offline' targets. */
  List<String> dimensions = [];
  /* Metrics in serialized format. Should be deserialized based on the data type provided in header. */
  List<String> metrics = [];
  MetricsRow();

  @override
  String toString() {
    return 'MetricsRow[dimensions=$dimensions, metrics=$metrics, ]';
  }

  MetricsRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dimensions'] == null) {
      dimensions = null;
    } else {
      dimensions = (json['dimensions'] as List).cast<String>();
    }
    if (json['metrics'] == null) {
      metrics = null;
    } else {
      metrics = (json['metrics'] as List).cast<String>();
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

  static List<MetricsRow> listFromJson(List<dynamic> json) {
    return json == null ? List<MetricsRow>() : json.map((value) => MetricsRow.fromJson(value)).toList();
  }

  static Map<String, MetricsRow> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MetricsRow>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MetricsRow.fromJson(value));
    }
    return map;
  }
}

