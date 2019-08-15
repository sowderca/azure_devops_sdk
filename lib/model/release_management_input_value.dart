part of azure_devops_sdk.api;

class ReleaseManagementInputValue {
  /* The text to show for the display of this value. */
  String displayValue = null;
  /* The value to store for this input. */
  String value = null;
  ReleaseManagementInputValue();

  @override
  String toString() {
    return 'ReleaseManagementInputValue[displayValue=$displayValue, value=$value, ]';
  }

  ReleaseManagementInputValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (displayValue != null)
      json['displayValue'] = displayValue;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ReleaseManagementInputValue> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseManagementInputValue>() : json.map((value) => ReleaseManagementInputValue.fromJson(value)).toList();
  }

  static Map<String, ReleaseManagementInputValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseManagementInputValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseManagementInputValue.fromJson(value));
    }
    return map;
  }
}

