part of azure_devops_sdk.api;

class InputValuesQuery {
  
  Map<String, String> currentValues = {};
  /* The input values to return on input, and the result from the consumer on output. */
  List<InputValues> inputValues = [];
  /* Subscription containing information about the publisher/consumer and the current input values */
  Object resource = null;
  InputValuesQuery();

  @override
  String toString() {
    return 'InputValuesQuery[currentValues=$currentValues, inputValues=$inputValues, resource=$resource, ]';
  }

  InputValuesQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['currentValues'] == null) {
      currentValues = null;
    } else {
          currentValues = (json['currentValues'] as Map).cast<String, String>();
    }
    if (json['inputValues'] == null) {
      inputValues = null;
    } else {
      inputValues = InputValues.listFromJson(json['inputValues']);
    }
    if (json['resource'] == null) {
      resource = null;
    } else {
          resource = json['resource'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (currentValues != null)
      json['currentValues'] = currentValues;
    if (inputValues != null)
      json['inputValues'] = inputValues;
    if (resource != null)
      json['resource'] = resource;
    return json;
  }

  static List<InputValuesQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<InputValuesQuery>() : json.map((value) => InputValuesQuery.fromJson(value)).toList();
  }

  static Map<String, InputValuesQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputValuesQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputValuesQuery.fromJson(value));
    }
    return map;
  }
}

