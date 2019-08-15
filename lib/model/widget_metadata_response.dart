part of azure_devops_sdk.api;

class WidgetMetadataResponse {
  
  String uri = null;
  
  WidgetMetadata widgetMetadata = null;
  WidgetMetadataResponse();

  @override
  String toString() {
    return 'WidgetMetadataResponse[uri=$uri, widgetMetadata=$widgetMetadata, ]';
  }

  WidgetMetadataResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
    if (json['widgetMetadata'] == null) {
      widgetMetadata = null;
    } else {
      widgetMetadata = WidgetMetadata.fromJson(json['widgetMetadata']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (uri != null)
      json['uri'] = uri;
    if (widgetMetadata != null)
      json['widgetMetadata'] = widgetMetadata;
    return json;
  }

  static List<WidgetMetadataResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetMetadataResponse>() : json.map((value) => WidgetMetadataResponse.fromJson(value)).toList();
  }

  static Map<String, WidgetMetadataResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetMetadataResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetMetadataResponse.fromJson(value));
    }
    return map;
  }
}

