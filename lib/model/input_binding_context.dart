part of azure_devops_sdk.api;

class InputBindingContext {
  /* Value of the input */
  String value = null;
  InputBindingContext();

  @override
  String toString() {
    return 'InputBindingContext[value=$value, ]';
  }

  InputBindingContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<InputBindingContext> listFromJson(List<dynamic> json) {
    return json == null ? List<InputBindingContext>() : json.map((value) => InputBindingContext.fromJson(value)).toList();
  }

  static Map<String, InputBindingContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InputBindingContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InputBindingContext.fromJson(value));
    }
    return map;
  }
}

