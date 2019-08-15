part of azure_devops_sdk.api;

class SourceRepositories {
  /* A token used to continue this paged request; 'null' if the request is complete */
  String continuationToken = null;
  /* The number of repositories requested for each page */
  int pageLength = null;
  /* A list of repositories */
  List<SourceRepository> repositories = [];
  /* The total number of pages, or '-1' if unknown */
  int totalPageCount = null;
  SourceRepositories();

  @override
  String toString() {
    return 'SourceRepositories[continuationToken=$continuationToken, pageLength=$pageLength, repositories=$repositories, totalPageCount=$totalPageCount, ]';
  }

  SourceRepositories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['pageLength'] == null) {
      pageLength = null;
    } else {
          pageLength = json['pageLength'];
    }
    if (json['repositories'] == null) {
      repositories = null;
    } else {
      repositories = SourceRepository.listFromJson(json['repositories']);
    }
    if (json['totalPageCount'] == null) {
      totalPageCount = null;
    } else {
          totalPageCount = json['totalPageCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (pageLength != null)
      json['pageLength'] = pageLength;
    if (repositories != null)
      json['repositories'] = repositories;
    if (totalPageCount != null)
      json['totalPageCount'] = totalPageCount;
    return json;
  }

  static List<SourceRepositories> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceRepositories>() : json.map((value) => SourceRepositories.fromJson(value)).toList();
  }

  static Map<String, SourceRepositories> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceRepositories>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceRepositories.fromJson(value));
    }
    return map;
  }
}

