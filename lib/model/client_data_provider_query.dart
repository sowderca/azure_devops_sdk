part of azure_devops_sdk.api;

class ClientDataProviderQuery {
  
  DataProviderContext context = null;
  /* The contribution ids of the data providers to resolve */
  List<String> contributionIds = [];
  ClientDataProviderQuery();

  @override
  String toString() {
    return 'ClientDataProviderQuery[context=$context, contributionIds=$contributionIds, ]';
  }

  ClientDataProviderQuery.fromJson(Map<String, dynamic> json) {
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

  static List<ClientDataProviderQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<ClientDataProviderQuery>() : json.map((value) => ClientDataProviderQuery.fromJson(value)).toList();
  }

  static Map<String, ClientDataProviderQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ClientDataProviderQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ClientDataProviderQuery.fromJson(value));
    }
    return map;
  }
}

