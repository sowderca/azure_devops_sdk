part of azure_devops_sdk.api;

class SummaryPercentileData {
  
  int percentile = null;
  
  double percentileValue = null;
  SummaryPercentileData();

  @override
  String toString() {
    return 'SummaryPercentileData[percentile=$percentile, percentileValue=$percentileValue, ]';
  }

  SummaryPercentileData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['percentile'] == null) {
      percentile = null;
    } else {
          percentile = json['percentile'];
    }
    if (json['percentileValue'] == null) {
      percentileValue = null;
    } else {
          percentileValue = json['percentileValue'].toDouble();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (percentile != null)
      json['percentile'] = percentile;
    if (percentileValue != null)
      json['percentileValue'] = percentileValue;
    return json;
  }

  static List<SummaryPercentileData> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryPercentileData>() : json.map((value) => SummaryPercentileData.fromJson(value)).toList();
  }

  static Map<String, SummaryPercentileData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryPercentileData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryPercentileData.fromJson(value));
    }
    return map;
  }
}

