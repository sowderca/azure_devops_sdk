part of azure_devops_sdk.api;

class PropertySelector {
  /* List of properties. */
  List<String> properties = [];
  /* Property selector type. */
  String selectorType = null;
  //enum selectorTypeEnum {  inclusion,  exclusion,  };{
  PropertySelector();

  @override
  String toString() {
    return 'PropertySelector[properties=$properties, selectorType=$selectorType, ]';
  }

  PropertySelector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = (json['properties'] as List).cast<String>();
    }
    if (json['selectorType'] == null) {
      selectorType = null;
    } else {
          selectorType = json['selectorType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (properties != null)
      json['properties'] = properties;
    if (selectorType != null)
      json['selectorType'] = selectorType;
    return json;
  }

  static List<PropertySelector> listFromJson(List<dynamic> json) {
    return json == null ? List<PropertySelector>() : json.map((value) => PropertySelector.fromJson(value)).toList();
  }

  static Map<String, PropertySelector> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PropertySelector>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PropertySelector.fromJson(value));
    }
    return map;
  }
}

