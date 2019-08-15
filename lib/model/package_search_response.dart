part of azure_devops_sdk.api;

class PackageSearchResponse {
  
  List<String> activityId = [];
  
  PackageSearchResponseContent content = null;
  PackageSearchResponse();

  @override
  String toString() {
    return 'PackageSearchResponse[activityId=$activityId, content=$content, ]';
  }

  PackageSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['activityId'] == null) {
      activityId = null;
    } else {
      activityId = (json['activityId'] as List).cast<String>();
    }
    if (json['content'] == null) {
      content = null;
    } else {
      content = PackageSearchResponseContent.fromJson(json['content']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (activityId != null)
      json['activityId'] = activityId;
    if (content != null)
      json['content'] = content;
    return json;
  }

  static List<PackageSearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageSearchResponse>() : json.map((value) => PackageSearchResponse.fromJson(value)).toList();
  }

  static Map<String, PackageSearchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageSearchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageSearchResponse.fromJson(value));
    }
    return map;
  }
}

