part of azure_devops_sdk.api;

class CounterSample {
  
  int baseValue = null;
  
  String computedValue = null;
  
  int counterFrequency = null;
  
  String counterInstanceId = null;
  
  String counterType = null;
  
  DateTime intervalEndDate = null;
  
  int intervalNumber = null;
  
  int rawValue = null;
  
  int systemFrequency = null;
  
  int timeStamp = null;
  CounterSample();

  @override
  String toString() {
    return 'CounterSample[baseValue=$baseValue, computedValue=$computedValue, counterFrequency=$counterFrequency, counterInstanceId=$counterInstanceId, counterType=$counterType, intervalEndDate=$intervalEndDate, intervalNumber=$intervalNumber, rawValue=$rawValue, systemFrequency=$systemFrequency, timeStamp=$timeStamp, ]';
  }

  CounterSample.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseValue'] == null) {
      baseValue = null;
    } else {
          baseValue = json['baseValue'];
    }
    if (json['computedValue'] == null) {
      computedValue = null;
    } else {
          computedValue = json['computedValue'];
    }
    if (json['counterFrequency'] == null) {
      counterFrequency = null;
    } else {
          counterFrequency = json['counterFrequency'];
    }
    if (json['counterInstanceId'] == null) {
      counterInstanceId = null;
    } else {
          counterInstanceId = json['counterInstanceId'];
    }
    if (json['counterType'] == null) {
      counterType = null;
    } else {
          counterType = json['counterType'];
    }
    if (json['intervalEndDate'] == null) {
      intervalEndDate = null;
    } else {
      intervalEndDate = DateTime.parse(json['intervalEndDate']);
    }
    if (json['intervalNumber'] == null) {
      intervalNumber = null;
    } else {
          intervalNumber = json['intervalNumber'];
    }
    if (json['rawValue'] == null) {
      rawValue = null;
    } else {
          rawValue = json['rawValue'];
    }
    if (json['systemFrequency'] == null) {
      systemFrequency = null;
    } else {
          systemFrequency = json['systemFrequency'];
    }
    if (json['timeStamp'] == null) {
      timeStamp = null;
    } else {
          timeStamp = json['timeStamp'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseValue != null)
      json['baseValue'] = baseValue;
    if (computedValue != null)
      json['computedValue'] = computedValue;
    if (counterFrequency != null)
      json['counterFrequency'] = counterFrequency;
    if (counterInstanceId != null)
      json['counterInstanceId'] = counterInstanceId;
    if (counterType != null)
      json['counterType'] = counterType;
    if (intervalEndDate != null)
      json['intervalEndDate'] = intervalEndDate == null ? null : intervalEndDate.toUtc().toIso8601String();
    if (intervalNumber != null)
      json['intervalNumber'] = intervalNumber;
    if (rawValue != null)
      json['rawValue'] = rawValue;
    if (systemFrequency != null)
      json['systemFrequency'] = systemFrequency;
    if (timeStamp != null)
      json['timeStamp'] = timeStamp;
    return json;
  }

  static List<CounterSample> listFromJson(List<dynamic> json) {
    return json == null ? List<CounterSample>() : json.map((value) => CounterSample.fromJson(value)).toList();
  }

  static Map<String, CounterSample> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CounterSample>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CounterSample.fromJson(value));
    }
    return map;
  }
}

