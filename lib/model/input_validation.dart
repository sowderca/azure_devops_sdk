part of azure_devops_sdk.api;

class InputValidation {
  /* Gets or sets the data data type to validate. */
  String dataType = null;
  //enum dataTypeEnum {  none,  string,  number,  boolean,  guid,  uri,  };{
  /* Gets or sets if this is a required field. */
  bool isRequired = null;
  /* Gets or sets the maximum length of this descriptor. */
  int maxLength = null;
  /* Gets or sets the minimum value for this descriptor. */
  String maxValue = null;
  /* Gets or sets the minimum length of this descriptor. */
  int minLength = null;
  /* Gets or sets the minimum value for this descriptor. */
  String minValue = null;
  /* Gets or sets the pattern to validate. */
  String pattern = null;
  /* Gets or sets the error on pattern mismatch. */
  String patternMismatchErrorMessage = null;
  InputValidation();

  @override
  String toString() {
    return 'InputValidation[dataType=$dataType, isRequired=$isRequired, maxLength=$maxLength, maxValue=$maxValue, minLength=$minLength, minValue=$minValue, pattern=$pattern, patternMismatchErrorMessage=$patternMismatchErrorMessage, ]';
  }

  InputValidation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dataType'] == null) {
      dataType = null;
    } else {
          dataType = json['dataType'];
    }
    if (json['isRequired'] == null) {
      isRequired = null;
    } else {
          isRequired = json['isRequired'];
    }
    if (json['maxLength'] == null) {
      maxLength = null;
    } else {
          maxLength = json['maxLength'];
    }
    if (json['maxValue'] == null) {
      maxValue = null;
    } else {
          maxValue = json['maxValue'];
    }
    if (json['minLength'] == null) {
      minLength = null;
    } else {
          minLength = json['minLength'];
    }
    if (json['minValue'] == null) {
      minValue = null;
    } else {
          minValue = json['minValue'];
    }
    if (json['pattern'] == null) {
      pattern = null;
    } else {
          pattern = json['pattern'];
    }
    if (json['patternMismatchErrorMessage'] == null) {
      patternMismatchErrorMessage = null;
    } else {
          patternMismatchErrorMessage = json['patternMismatchErrorMessage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dataType != null)
      json['dataType'] = dataType;
    if (isRequired != null)
      json['isRequired'] = isRequired;
    if (maxLength != null)
      json['maxLength'] = maxLength;
    if (maxValue != null)
      json['maxValue'] = maxValue;
    if (minLength != null)
      json['minLength'] = minLength;
    if (minValue != null)
      json['minValue'] = minValue;
    if (pattern != null)
      json['pattern'] = pattern;
    if (patternMismatchErrorMessage != null)
      json['patternMismatchErrorMessage'] = patternMismatchErrorMessage;
    return json;
  }

  static List<InputValidation> listFromJson(List<dynamic> json) {
    return json == null ? List<InputValidation>() : json.map((value) => InputValidation.fromJson(value)).toList();
  }

  static Map<String, InputValidation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputValidation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputValidation.fromJson(value));
    }
    return map;
  }
}

