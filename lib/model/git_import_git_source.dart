part of azure_devops_sdk.api;

class GitImportGitSource {
  /* Tells if this is a sync request or not */
  bool overwrite = null;
  /* Url for the source repo */
  String url = null;
  GitImportGitSource();

  @override
  String toString() {
    return 'GitImportGitSource[overwrite=$overwrite, url=$url, ]';
  }

  GitImportGitSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['overwrite'] == null) {
      overwrite = null;
    } else {
          overwrite = json['overwrite'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (overwrite != null)
      json['overwrite'] = overwrite;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitImportGitSource> listFromJson(List<dynamic> json) {
    return json == null ? List<GitImportGitSource>() : json.map((value) => GitImportGitSource.fromJson(value)).toList();
  }

  static Map<String, GitImportGitSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitImportGitSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitImportGitSource.fromJson(value));
    }
    return map;
  }
}

