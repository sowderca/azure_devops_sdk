part of azure_devops_sdk.api;

class WikiResult {
  
  Collection collection = null;
  /* ContentId of the result file. */
  String contentId = null;
  /* Name of the result file. */
  String fileName = null;
  /* Highlighted snippets of fields that match the search request. The list is sorted by relevance of the snippets. */
  List<WikiHit> hits = [];
  /* Path at which result file is present. */
  String path = null;
  
  ProjectReference project = null;
  
  Wiki wiki = null;
  WikiResult();

  @override
  String toString() {
    return 'WikiResult[collection=$collection, contentId=$contentId, fileName=$fileName, hits=$hits, path=$path, project=$project, wiki=$wiki, ]';
  }

  WikiResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collection'] == null) {
      collection = null;
    } else {
      collection = Collection.fromJson(json['collection']);
    }
    if (json['contentId'] == null) {
      contentId = null;
    } else {
          contentId = json['contentId'];
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['hits'] == null) {
      hits = null;
    } else {
      hits = WikiHit.listFromJson(json['hits']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
    if (json['wiki'] == null) {
      wiki = null;
    } else {
      wiki = Wiki.fromJson(json['wiki']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collection != null)
      json['collection'] = collection;
    if (contentId != null)
      json['contentId'] = contentId;
    if (fileName != null)
      json['fileName'] = fileName;
    if (hits != null)
      json['hits'] = hits;
    if (path != null)
      json['path'] = path;
    if (project != null)
      json['project'] = project;
    if (wiki != null)
      json['wiki'] = wiki;
    return json;
  }

  static List<WikiResult> listFromJson(List<dynamic> json) {
    return json == null ? List<WikiResult>() : json.map((value) => WikiResult.fromJson(value)).toList();
  }

  static Map<String, WikiResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WikiResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WikiResult.fromJson(value));
    }
    return map;
  }
}

