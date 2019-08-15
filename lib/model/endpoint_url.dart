part of azure_devops_sdk.api;

class EndpointUrl {
  
  DependsOn dependsOn = null;
  /* Gets or sets the display name of service endpoint url. */
  String displayName = null;
  /* Gets or sets the help text of service endpoint url. */
  String helpText = null;
  /* Gets or sets the visibility of service endpoint url. */
  String isVisible = null;
  /* Gets or sets the value of service endpoint url. */
  String value = null;
  EndpointUrl();

  @override
  String toString() {
    return 'EndpointUrl[dependsOn=$dependsOn, displayName=$displayName, helpText=$helpText, isVisible=$isVisible, value=$value, ]';
  }

  EndpointUrl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dependsOn'] == null) {
      dependsOn = null;
    } else {
      dependsOn = DependsOn.fromJson(json['dependsOn']);
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['helpText'] == null) {
      helpText = null;
    } else {
          helpText = json['helpText'];
    }
    if (json['isVisible'] == null) {
      isVisible = null;
    } else {
          isVisible = json['isVisible'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dependsOn != null)
      json['dependsOn'] = dependsOn;
    if (displayName != null)
      json['displayName'] = displayName;
    if (helpText != null)
      json['helpText'] = helpText;
    if (isVisible != null)
      json['isVisible'] = isVisible;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<EndpointUrl> listFromJson(List<dynamic> json) {
    return json == null ? List<EndpointUrl>() : json.map((value) => EndpointUrl.fromJson(value)).toList();
  }

  static Map<String, EndpointUrl> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EndpointUrl>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EndpointUrl.fromJson(value));
    }
    return map;
  }
}

