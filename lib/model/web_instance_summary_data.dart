part of azure_devops_sdk.api;

class WebInstanceSummaryData {
  
  double average = null;
  
  double max = null;
  
  double min = null;
  WebInstanceSummaryData();

  @override
  String toString() {
    return 'WebInstanceSummaryData[average=$average, max=$max, min=$min, ]';
  }

  WebInstanceSummaryData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['average'] == null) {
      average = null;
    } else {
          average = json['average'].toDouble();
    }
    if (json['max'] == null) {
      max = null;
    } else {
          max = json['max'].toDouble();
    }
    if (json['min'] == null) {
      min = null;
    } else {
          min = json['min'].toDouble();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (average != null)
      json['average'] = average;
    if (max != null)
      json['max'] = max;
    if (min != null)
      json['min'] = min;
    return json;
  }

  static List<WebInstanceSummaryData> listFromJson(List<dynamic> json) {
    return json == null ? List<WebInstanceSummaryData>() : json.map((value) => WebInstanceSummaryData.fromJson(value)).toList();
  }

  static Map<String, WebInstanceSummaryData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebInstanceSummaryData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebInstanceSummaryData.fromJson(value));
    }
    return map;
  }
}

