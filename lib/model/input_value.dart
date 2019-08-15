part of azure_devops_sdk.api;

class InputValue {
  /* Any other data about this input */
  Map<String, Object> data = {};
  /* The text to show for the display of this value */
  String displayValue = null;
  /* The value to store for this input */
  String value = null;
  InputValue();

  @override
  String toString() {
    return 'InputValue[data=$data, displayValue=$displayValue, value=$value, ]';
  }

  InputValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
      data = Object.mapFromJson(json['data']);
    }
    if (json['displayValue'] == null) {
      displayValue = null;
    } else {
          displayValue = json['displayValue'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (displayValue != null)
      json['displayValue'] = displayValue;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<InputValue> listFromJson(List<dynamic> json) {
    return json == null ? List<InputValue>() : json.map((value) => InputValue.fromJson(value)).toList();
  }

  static Map<String, InputValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputValue.fromJson(value));
    }
    return map;
  }
}

