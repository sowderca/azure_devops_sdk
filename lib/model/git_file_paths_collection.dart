part of azure_devops_sdk.api;

class GitFilePathsCollection {
  
  String commitId = null;
  
  List<String> paths = [];
  
  String url = null;
  GitFilePathsCollection();

  @override
  String toString() {
    return 'GitFilePathsCollection[commitId=$commitId, paths=$paths, url=$url, ]';
  }

  GitFilePathsCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commitId'] == null) {
      commitId = null;
    } else {
          commitId = json['commitId'];
    }
    if (json['paths'] == null) {
      paths = null;
    } else {
      paths = (json['paths'] as List).cast<String>();
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commitId != null)
      json['commitId'] = commitId;
    if (paths != null)
      json['paths'] = paths;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitFilePathsCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<GitFilePathsCollection>() : json.map((value) => GitFilePathsCollection.fromJson(value)).toList();
  }

  static Map<String, GitFilePathsCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitFilePathsCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitFilePathsCollection.fromJson(value));
    }
    return map;
  }
}

