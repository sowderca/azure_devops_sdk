part of azure_devops_sdk.api;

class CounterSamplesResult {
  /* Count of the samples */
  int count = null;
  /* Maximum number of samples returned in this object */
  int maxBatchSize = null;
  /* Count of the samples */
  int totalSamplesCount = null;
  /* The result samples */
  List<CounterInstanceSamples> values = [];
  CounterSamplesResult();

  @override
  String toString() {
    return 'CounterSamplesResult[count=$count, maxBatchSize=$maxBatchSize, totalSamplesCount=$totalSamplesCount, values=$values, ]';
  }

  CounterSamplesResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['maxBatchSize'] == null) {
      maxBatchSize = null;
    } else {
          maxBatchSize = json['maxBatchSize'];
    }
    if (json['totalSamplesCount'] == null) {
      totalSamplesCount = null;
    } else {
          totalSamplesCount = json['totalSamplesCount'];
    }
    if (json['values'] == null) {
      values = null;
    } else {
      values = CounterInstanceSamples.listFromJson(json['values']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (maxBatchSize != null)
      json['maxBatchSize'] = maxBatchSize;
    if (totalSamplesCount != null)
      json['totalSamplesCount'] = totalSamplesCount;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<CounterSamplesResult> listFromJson(List<dynamic> json) {
    return json == null ? List<CounterSamplesResult>() : json.map((value) => CounterSamplesResult.fromJson(value)).toList();
  }

  static Map<String, CounterSamplesResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CounterSamplesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CounterSamplesResult.fromJson(value));
    }
    return map;
  }
}

