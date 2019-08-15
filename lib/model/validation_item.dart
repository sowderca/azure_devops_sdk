part of azure_devops_sdk.api;

class ValidationItem {
  /* Tells whether the current input is valid or not */
  bool isValid = null;
  /* Reason for input validation failure */
  String reason = null;
  /* Type of validation item */
  String type = null;
  /* Value to validate. The conditional expression to validate for the input for \"expression\" type Eg:eq(variables['Build.SourceBranch'], 'refs/heads/master');eq(value, 'refs/heads/master') */
  String value = null;
  ValidationItem();

  @override
  String toString() {
    return 'ValidationItem[isValid=$isValid, reason=$reason, type=$type, value=$value, ]';
  }

  ValidationItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isValid'] == null) {
      isValid = null;
    } else {
          isValid = json['isValid'];
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isValid != null)
      json['isValid'] = isValid;
    if (reason != null)
      json['reason'] = reason;
    if (type != null)
      json['type'] = type;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ValidationItem> listFromJson(List<dynamic> json) {
    return json == null ? List<ValidationItem>() : json.map((value) => ValidationItem.fromJson(value)).toList();
  }

  static Map<String, ValidationItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ValidationItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidationItem.fromJson(value));
    }
    return map;
  }
}

