part of azure_devops_sdk.api;

class CounterSampleQueryDetails {
  /* The instanceId for which samples are required */
  String counterInstanceId = null;
  
  int fromInterval = null;
  
  int toInterval = null;
  CounterSampleQueryDetails();

  @override
  String toString() {
    return 'CounterSampleQueryDetails[counterInstanceId=$counterInstanceId, fromInterval=$fromInterval, toInterval=$toInterval, ]';
  }

  CounterSampleQueryDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['counterInstanceId'] == null) {
      counterInstanceId = null;
    } else {
          counterInstanceId = json['counterInstanceId'];
    }
    if (json['fromInterval'] == null) {
      fromInterval = null;
    } else {
          fromInterval = json['fromInterval'];
    }
    if (json['toInterval'] == null) {
      toInterval = null;
    } else {
          toInterval = json['toInterval'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (counterInstanceId != null)
      json['counterInstanceId'] = counterInstanceId;
    if (fromInterval != null)
      json['fromInterval'] = fromInterval;
    if (toInterval != null)
      json['toInterval'] = toInterval;
    return json;
  }

  static List<CounterSampleQueryDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<CounterSampleQueryDetails>() : json.map((value) => CounterSampleQueryDetails.fromJson(value)).toList();
  }

  static Map<String, CounterSampleQueryDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CounterSampleQueryDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CounterSampleQueryDetails.fromJson(value));
    }
    return map;
  }
}

