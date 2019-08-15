part of azure_devops_sdk.api;

class FieldInputValues {
  /* The default value to use for this input */
  String defaultValue = null;
  
  InputValuesError error = null;
  /* The id of the input */
  String inputId = null;
  /* Should this input be disabled */
  bool isDisabled = null;
  /* Should the value be restricted to one of the values in the PossibleValues (True) or are the values in PossibleValues just a suggestion (False) */
  bool isLimitedToPossibleValues = null;
  /* Should this input be made read-only */
  bool isReadOnly = null;
  /* Possible values that this input can take */
  List<InputValue> possibleValues = [];
  FieldInputValues();

  @override
  String toString() {
    return 'FieldInputValues[defaultValue=$defaultValue, error=$error, inputId=$inputId, isDisabled=$isDisabled, isLimitedToPossibleValues=$isLimitedToPossibleValues, isReadOnly=$isReadOnly, possibleValues=$possibleValues, ]';
  }

  FieldInputValues.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['defaultValue'] == null) {
      defaultValue = null;
    } else {
          defaultValue = json['defaultValue'];
    }
    if (json['error'] == null) {
      error = null;
    } else {
      error = InputValuesError.fromJson(json['error']);
    }
    if (json['inputId'] == null) {
      inputId = null;
    } else {
          inputId = json['inputId'];
    }
    if (json['isDisabled'] == null) {
      isDisabled = null;
    } else {
          isDisabled = json['isDisabled'];
    }
    if (json['isLimitedToPossibleValues'] == null) {
      isLimitedToPossibleValues = null;
    } else {
          isLimitedToPossibleValues = json['isLimitedToPossibleValues'];
    }
    if (json['isReadOnly'] == null) {
      isReadOnly = null;
    } else {
          isReadOnly = json['isReadOnly'];
    }
    if (json['possibleValues'] == null) {
      possibleValues = null;
    } else {
      possibleValues = InputValue.listFromJson(json['possibleValues']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (defaultValue != null)
      json['defaultValue'] = defaultValue;
    if (error != null)
      json['error'] = error;
    if (inputId != null)
      json['inputId'] = inputId;
    if (isDisabled != null)
      json['isDisabled'] = isDisabled;
    if (isLimitedToPossibleValues != null)
      json['isLimitedToPossibleValues'] = isLimitedToPossibleValues;
    if (isReadOnly != null)
      json['isReadOnly'] = isReadOnly;
    if (possibleValues != null)
      json['possibleValues'] = possibleValues;
    return json;
  }

  static List<FieldInputValues> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldInputValues>() : json.map((value) => FieldInputValues.fromJson(value)).toList();
  }

  static Map<String, FieldInputValues> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldInputValues>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldInputValues.fromJson(value));
    }
    return map;
  }
}

