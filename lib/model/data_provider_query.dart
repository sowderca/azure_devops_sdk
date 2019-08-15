part of azure_devops_sdk.api;

class DataProviderQuery {
  
  DataProviderContext context = null;
  /* The contribution ids of the data providers to resolve */
  List<String> contributionIds = [];
  DataProviderQuery();

  @override
  String toString() {
    return 'DataProviderQuery[context=$context, contributionIds=$contributionIds, ]';
  }

  DataProviderQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['context'] == null) {
      context = null;
    } else {
      context = DataProviderContext.fromJson(json['context']);
    }
    if (json['contributionIds'] == null) {
      contributionIds = null;
    } else {
      contributionIds = (json['contributionIds'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (context != null)
      json['context'] = context;
    if (contributionIds != null)
      json['contributionIds'] = contributionIds;
    return json;
  }

  static List<DataProviderQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<DataProviderQuery>() : json.map((value) => DataProviderQuery.fromJson(value)).toList();
  }

  static Map<String, DataProviderQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DataProviderQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DataProviderQuery.fromJson(value));
    }
    return map;
  }
}

