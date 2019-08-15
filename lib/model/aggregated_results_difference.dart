part of azure_devops_sdk.api;

class AggregatedResultsDifference {
  
  String increaseInDuration = null;
  
  int increaseInFailures = null;
  
  int increaseInOtherTests = null;
  
  int increaseInPassedTests = null;
  
  int increaseInTotalTests = null;
  AggregatedResultsDifference();

  @override
  String toString() {
    return 'AggregatedResultsDifference[increaseInDuration=$increaseInDuration, increaseInFailures=$increaseInFailures, increaseInOtherTests=$increaseInOtherTests, increaseInPassedTests=$increaseInPassedTests, increaseInTotalTests=$increaseInTotalTests, ]';
  }

  AggregatedResultsDifference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['increaseInDuration'] == null) {
      increaseInDuration = null;
    } else {
          increaseInDuration = json['increaseInDuration'];
    }
    if (json['increaseInFailures'] == null) {
      increaseInFailures = null;
    } else {
          increaseInFailures = json['increaseInFailures'];
    }
    if (json['increaseInOtherTests'] == null) {
      increaseInOtherTests = null;
    } else {
          increaseInOtherTests = json['increaseInOtherTests'];
    }
    if (json['increaseInPassedTests'] == null) {
      increaseInPassedTests = null;
    } else {
          increaseInPassedTests = json['increaseInPassedTests'];
    }
    if (json['increaseInTotalTests'] == null) {
      increaseInTotalTests = null;
    } else {
          increaseInTotalTests = json['increaseInTotalTests'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (increaseInDuration != null)
      json['increaseInDuration'] = increaseInDuration;
    if (increaseInFailures != null)
      json['increaseInFailures'] = increaseInFailures;
    if (increaseInOtherTests != null)
      json['increaseInOtherTests'] = increaseInOtherTests;
    if (increaseInPassedTests != null)
      json['increaseInPassedTests'] = increaseInPassedTests;
    if (increaseInTotalTests != null)
      json['increaseInTotalTests'] = increaseInTotalTests;
    return json;
  }

  static List<AggregatedResultsDifference> listFromJson(List<dynamic> json) {
    return json == null ? List<AggregatedResultsDifference>() : json.map((value) => AggregatedResultsDifference.fromJson(value)).toList();
  }

  static Map<String, AggregatedResultsDifference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AggregatedResultsDifference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AggregatedResultsDifference.fromJson(value));
    }
    return map;
  }
}

