part of azure_devops_sdk.api;

class Issue {
  /* The category. */
  String category = null;
  
  Map<String, String> data = {};
  /* A description of the issue. */
  String message = null;
  /* The type (error, warning) of the issue. */
  String type = null;
  //enum typeEnum {  error,  warning,  };{
  Issue();

  @override
  String toString() {
    return 'Issue[category=$category, data=$data, message=$message, type=$type, ]';
  }

  Issue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (category != null)
      json['category'] = category;
    if (data != null)
      json['data'] = data;
    if (message != null)
      json['message'] = message;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Issue> listFromJson(List<dynamic> json) {
    return json == null ? List<Issue>() : json.map((value) => Issue.fromJson(value)).toList();
  }

  static Map<String, Issue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Issue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Issue.fromJson(value));
    }
    return map;
  }
}

