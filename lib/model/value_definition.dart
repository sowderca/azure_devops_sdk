part of azure_devops_sdk.api;

class ValueDefinition {
  /* Gets or sets the data source. */
  List<InputValue> dataSource = [];
  /* Gets or sets the rest end point. */
  String endPoint = null;
  /* Gets or sets the result template. */
  String resultTemplate = null;
  ValueDefinition();

  @override
  String toString() {
    return 'ValueDefinition[dataSource=$dataSource, endPoint=$endPoint, resultTemplate=$resultTemplate, ]';
  }

  ValueDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dataSource'] == null) {
      dataSource = null;
    } else {
      dataSource = InputValue.listFromJson(json['dataSource']);
    }
    if (json['endPoint'] == null) {
      endPoint = null;
    } else {
          endPoint = json['endPoint'];
    }
    if (json['resultTemplate'] == null) {
      resultTemplate = null;
    } else {
          resultTemplate = json['resultTemplate'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dataSource != null)
      json['dataSource'] = dataSource;
    if (endPoint != null)
      json['endPoint'] = endPoint;
    if (resultTemplate != null)
      json['resultTemplate'] = resultTemplate;
    return json;
  }

  static List<ValueDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ValueDefinition>() : json.map((value) => ValueDefinition.fromJson(value)).toList();
  }

  static Map<String, ValueDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ValueDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValueDefinition.fromJson(value));
    }
    return map;
  }
}

