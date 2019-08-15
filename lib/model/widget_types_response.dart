part of azure_devops_sdk.api;

class WidgetTypesResponse {
  
  ReferenceLinks links = null;
  
  String uri = null;
  
  List<WidgetMetadata> widgetTypes = [];
  WidgetTypesResponse();

  @override
  String toString() {
    return 'WidgetTypesResponse[links=$links, uri=$uri, widgetTypes=$widgetTypes, ]';
  }

  WidgetTypesResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
    if (json['widgetTypes'] == null) {
      widgetTypes = null;
    } else {
      widgetTypes = WidgetMetadata.listFromJson(json['widgetTypes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (uri != null)
      json['uri'] = uri;
    if (widgetTypes != null)
      json['widgetTypes'] = widgetTypes;
    return json;
  }

  static List<WidgetTypesResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetTypesResponse>() : json.map((value) => WidgetTypesResponse.fromJson(value)).toList();
  }

  static Map<String, WidgetTypesResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetTypesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetTypesResponse.fromJson(value));
    }
    return map;
  }
}

