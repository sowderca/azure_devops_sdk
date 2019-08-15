part of azure_devops_sdk.api;

class WikiPageResponse {
  /* Contains the list of ETag values from the response header of the pages API call. The first item in the list contains the version of the wiki page. */
  List<String> eTag = [];
  
  WikiPage page = null;
  WikiPageResponse();

  @override
  String toString() {
    return 'WikiPageResponse[eTag=$eTag, page=$page, ]';
  }

  WikiPageResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eTag'] == null) {
      eTag = null;
    } else {
      eTag = (json['eTag'] as List).cast<String>();
    }
    if (json['page'] == null) {
      page = null;
    } else {
      page = WikiPage.fromJson(json['page']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eTag != null)
      json['eTag'] = eTag;
    if (page != null)
      json['page'] = page;
    return json;
  }

  static List<WikiPageResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPageResponse>() : json.map((value) => WikiPageResponse.fromJson(value)).toList();
  }

  static Map<String, WikiPageResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPageResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPageResponse.fromJson(value));
    }
    return map;
  }
}

