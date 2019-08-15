part of azure_devops_sdk.api;

class FieldsToEvaluate {
  /* List of fields to evaluate. */
  List<String> fields = [];
  /* Updated field values to evaluate. */
  Map<String, Object> fieldUpdates = {};
  /* Initial field values. */
  Map<String, Object> fieldValues = {};
  /* URL of the work item type for which the rules need to be executed. */
  List<String> rulesFrom = [];
  FieldsToEvaluate();

  @override
  String toString() {
    return 'FieldsToEvaluate[fields=$fields, fieldUpdates=$fieldUpdates, fieldValues=$fieldValues, rulesFrom=$rulesFrom, ]';
  }

  FieldsToEvaluate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = (json['fields'] as List).cast<String>();
    }
    if (json['fieldUpdates'] == null) {
      fieldUpdates = null;
    } else {
      fieldUpdates = Object.mapFromJson(json['fieldUpdates']);
    }
    if (json['fieldValues'] == null) {
      fieldValues = null;
    } else {
      fieldValues = Object.mapFromJson(json['fieldValues']);
    }
    if (json['rulesFrom'] == null) {
      rulesFrom = null;
    } else {
      rulesFrom = (json['rulesFrom'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fields != null)
      json['fields'] = fields;
    if (fieldUpdates != null)
      json['fieldUpdates'] = fieldUpdates;
    if (fieldValues != null)
      json['fieldValues'] = fieldValues;
    if (rulesFrom != null)
      json['rulesFrom'] = rulesFrom;
    return json;
  }

  static List<FieldsToEvaluate> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldsToEvaluate>() : json.map((value) => FieldsToEvaluate.fromJson(value)).toList();
  }

  static Map<String, FieldsToEvaluate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldsToEvaluate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldsToEvaluate.fromJson(value));
    }
    return map;
  }
}

