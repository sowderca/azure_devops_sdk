part of azure_devops_sdk.api;

class WikiPageMoveResponse {
  /* Contains the list of ETag values from the response header of the page move API call. The first item in the list contains the version of the wiki page subject to page move. */
  List<String> eTag = [];
  
  WikiPageMove pageMove = null;
  WikiPageMoveResponse();

  @override
  String toString() {
    return 'WikiPageMoveResponse[eTag=$eTag, pageMove=$pageMove, ]';
  }

  WikiPageMoveResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eTag'] == null) {
      eTag = null;
    } else {
      eTag = (json['eTag'] as List).cast<String>();
    }
    if (json['pageMove'] == null) {
      pageMove = null;
    } else {
      pageMove = WikiPageMove.fromJson(json['pageMove']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eTag != null)
      json['eTag'] = eTag;
    if (pageMove != null)
      json['pageMove'] = pageMove;
    return json;
  }

  static List<WikiPageMoveResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiPageMoveResponse>() : json.map((value) => WikiPageMoveResponse.fromJson(value)).toList();
  }

  static Map<String, WikiPageMoveResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiPageMoveResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiPageMoveResponse.fromJson(value));
    }
    return map;
  }
}

