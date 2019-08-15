part of azure_devops_sdk.api;

class MetricsColumnMetaData {
  /* Name. */
  String columnName = null;
  /* Data type. */
  String columnValueType = null;
  MetricsColumnMetaData();

  @override
  String toString() {
    return 'MetricsColumnMetaData[columnName=$columnName, columnValueType=$columnValueType, ]';
  }

  MetricsColumnMetaData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnName'] == null) {
      columnName = null;
    } else {
          columnName = json['columnName'];
    }
    if (json['columnValueType'] == null) {
      columnValueType = null;
    } else {
          columnValueType = json['columnValueType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnName != null)
      json['columnName'] = columnName;
    if (columnValueType != null)
      json['columnValueType'] = columnValueType;
    return json;
  }

  static List<MetricsColumnMetaData> listFromJson(List<dynamic> json) {
    return json == null ? List<MetricsColumnMetaData>() : json.map((value) => MetricsColumnMetaData.fromJson(value)).toList();
  }

  static Map<String, MetricsColumnMetaData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MetricsColumnMetaData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MetricsColumnMetaData.fromJson(value));
    }
    return map;
  }
}

