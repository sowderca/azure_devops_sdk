part of azure_devops_sdk.api;

class GitQueryRefsCriteria {
  /* List of commit Ids to be searched */
  List<String> commitIds = [];
  /* List of complete or partial names for refs to be searched */
  List<String> refNames = [];
  /* Type of search on refNames, if provided */
  String searchType = null;
  //enum searchTypeEnum {  exact,  startsWith,  contains,  };{
  GitQueryRefsCriteria();

  @override
  String toString() {
    return 'GitQueryRefsCriteria[commitIds=$commitIds, refNames=$refNames, searchType=$searchType, ]';
  }

  GitQueryRefsCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['commitIds'] == null) {
      commitIds = null;
    } else {
      commitIds = (json['commitIds'] as List).cast<String>();
    }
    if (json['refNames'] == null) {
      refNames = null;
    } else {
      refNames = (json['refNames'] as List).cast<String>();
    }
    if (json['searchType'] == null) {
      searchType = null;
    } else {
          searchType = json['searchType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commitIds != null)
      json['commitIds'] = commitIds;
    if (refNames != null)
      json['refNames'] = refNames;
    if (searchType != null)
      json['searchType'] = searchType;
    return json;
  }

  static List<GitQueryRefsCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<GitQueryRefsCriteria>() : json.map((value) => GitQueryRefsCriteria.fromJson(value)).toList();
  }

  static Map<String, GitQueryRefsCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitQueryRefsCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitQueryRefsCriteria.fromJson(value));
    }
    return map;
  }
}

