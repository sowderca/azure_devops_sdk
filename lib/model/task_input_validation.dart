part of azure_devops_sdk.api;

class TaskInputValidation {
  /* Conditional expression */
  String expression = null;
  /* Message explaining how user can correct if validation fails */
  String message = null;
  TaskInputValidation();

  @override
  String toString() {
    return 'TaskInputValidation[expression=$expression, message=$message, ]';
  }

  TaskInputValidation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['expression'] == null) {
      expression = null;
    } else {
          expression = json['expression'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (expression != null)
      json['expression'] = expression;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<TaskInputValidation> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskInputValidation>() : json.map((value) => TaskInputValidation.fromJson(value)).toList();
  }

  static Map<String, TaskInputValidation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskInputValidation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskInputValidation.fromJson(value));
    }
    return map;
  }
}

