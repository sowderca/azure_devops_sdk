part of azure_devops_sdk.api;

class InputFilterCondition {
  /* Whether or not to do a case sensitive match */
  bool caseSensitive = null;
  /* The Id of the input to filter on */
  String inputId = null;
  /* The \"expected\" input value to compare with the actual input value */
  String inputValue = null;
  /* The operator applied between the expected and actual input value */
  String operator_ = null;
  //enum operator_Enum {  equals,  notEquals,  };{
  InputFilterCondition();

  @override
  String toString() {
    return 'InputFilterCondition[caseSensitive=$caseSensitive, inputId=$inputId, inputValue=$inputValue, operator_=$operator_, ]';
  }

  InputFilterCondition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['caseSensitive'] == null) {
      caseSensitive = null;
    } else {
          caseSensitive = json['caseSensitive'];
    }
    if (json['inputId'] == null) {
      inputId = null;
    } else {
          inputId = json['inputId'];
    }
    if (json['inputValue'] == null) {
      inputValue = null;
    } else {
          inputValue = json['inputValue'];
    }
    if (json['operator'] == null) {
      operator_ = null;
    } else {
          operator_ = json['operator'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (caseSensitive != null)
      json['caseSensitive'] = caseSensitive;
    if (inputId != null)
      json['inputId'] = inputId;
    if (inputValue != null)
      json['inputValue'] = inputValue;
    if (operator_ != null)
      json['operator'] = operator_;
    return json;
  }

  static List<InputFilterCondition> listFromJson(List<dynamic> json) {
    return json == null ? List<InputFilterCondition>() : json.map((value) => InputFilterCondition.fromJson(value)).toList();
  }

  static Map<String, InputFilterCondition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputFilterCondition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputFilterCondition.fromJson(value));
    }
    return map;
  }
}

