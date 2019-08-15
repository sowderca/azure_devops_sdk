part of azure_devops_sdk.api;

class ExtensionStatistic {
  
  String statisticName = null;
  
  double value = null;
  ExtensionStatistic();

  @override
  String toString() {
    return 'ExtensionStatistic[statisticName=$statisticName, value=$value, ]';
  }

  ExtensionStatistic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['statisticName'] == null) {
      statisticName = null;
    } else {
          statisticName = json['statisticName'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'].toDouble();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (statisticName != null)
      json['statisticName'] = statisticName;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ExtensionStatistic> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionStatistic>() : json.map((value) => ExtensionStatistic.fromJson(value)).toList();
  }

  static Map<String, ExtensionStatistic> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionStatistic>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionStatistic.fromJson(value));
    }
    return map;
  }
}

