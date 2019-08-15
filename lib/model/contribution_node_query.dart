part of azure_devops_sdk.api;

class ContributionNodeQuery {
  /* The contribution ids of the nodes to find. */
  List<String> contributionIds = [];
  
  DataProviderContext dataProviderContext = null;
  /* Indicator if contribution provider details should be included in the result. */
  bool includeProviderDetails = null;
  /* Query options tpo be used when fetching ContributionNodes */
  String queryOptions = null;
  //enum queryOptionsEnum {  none,  includeSelf,  includeChildren,  includeSubTree,  includeAll,  ignoreConstraints,  };{
  ContributionNodeQuery();

  @override
  String toString() {
    return 'ContributionNodeQuery[contributionIds=$contributionIds, dataProviderContext=$dataProviderContext, includeProviderDetails=$includeProviderDetails, queryOptions=$queryOptions, ]';
  }

  ContributionNodeQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['contributionIds'] == null) {
      contributionIds = null;
    } else {
      contributionIds = (json['contributionIds'] as List).cast<String>();
    }
    if (json['dataProviderContext'] == null) {
      dataProviderContext = null;
    } else {
      dataProviderContext = DataProviderContext.fromJson(json['dataProviderContext']);
    }
    if (json['includeProviderDetails'] == null) {
      includeProviderDetails = null;
    } else {
          includeProviderDetails = json['includeProviderDetails'];
    }
    if (json['queryOptions'] == null) {
      queryOptions = null;
    } else {
          queryOptions = json['queryOptions'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contributionIds != null)
      json['contributionIds'] = contributionIds;
    if (dataProviderContext != null)
      json['dataProviderContext'] = dataProviderContext;
    if (includeProviderDetails != null)
      json['includeProviderDetails'] = includeProviderDetails;
    if (queryOptions != null)
      json['queryOptions'] = queryOptions;
    return json;
  }

  static List<ContributionNodeQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionNodeQuery>() : json.map((value) => ContributionNodeQuery.fromJson(value)).toList();
  }

  static Map<String, ContributionNodeQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionNodeQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionNodeQuery.fromJson(value));
    }
    return map;
  }
}

