part of azure_devops_sdk.api;

class CounterInstanceSamples {
  
  int count = null;
  
  String counterInstanceId = null;
  /* The time of next refresh */
  DateTime nextRefreshTime = null;
  
  List<CounterSample> values = [];
  CounterInstanceSamples();

  @override
  String toString() {
    return 'CounterInstanceSamples[count=$count, counterInstanceId=$counterInstanceId, nextRefreshTime=$nextRefreshTime, values=$values, ]';
  }

  CounterInstanceSamples.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['counterInstanceId'] == null) {
      counterInstanceId = null;
    } else {
          counterInstanceId = json['counterInstanceId'];
    }
    if (json['nextRefreshTime'] == null) {
      nextRefreshTime = null;
    } else {
      nextRefreshTime = DateTime.parse(json['nextRefreshTime']);
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = CounterSample.listFromJson(json['values']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (counterInstanceId != null)
      json['counterInstanceId'] = counterInstanceId;
    if (nextRefreshTime != null)
      json['nextRefreshTime'] = nextRefreshTime == null ? null : nextRefreshTime.toUtc().toIso8601String();
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<CounterInstanceSamples> listFromJson(List<dynamic> json) {
    return json == null ? List<CounterInstanceSamples>() : json.map((value) => CounterInstanceSamples.fromJson(value)).toList();
  }

  static Map<String, CounterInstanceSamples> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CounterInstanceSamples>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CounterInstanceSamples.fromJson(value));
    }
    return map;
  }
}

