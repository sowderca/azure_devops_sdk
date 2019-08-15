part of azure_devops_sdk.api;

class ContributionNodeQueryResult {
  /* Map of contribution ids to corresponding node. */
  Map<String, ClientContributionNode> nodes = {};
  /* Map of provider ids to the corresponding provider details object. */
  Map<String, ClientContributionProviderDetails> providerDetails = {};
  ContributionNodeQueryResult();

  @override
  String toString() {
    return 'ContributionNodeQueryResult[nodes=$nodes, providerDetails=$providerDetails, ]';
  }

  ContributionNodeQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['nodes'] == null) {
      nodes = null;
    } else {
      nodes = ClientContributionNode.mapFromJson(json['nodes']);
    }
    if (json['providerDetails'] == null) {
      providerDetails = null;
    } else {
      providerDetails = ClientContributionProviderDetails.mapFromJson(json['providerDetails']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (nodes != null)
      json['nodes'] = nodes;
    if (providerDetails != null)
      json['providerDetails'] = providerDetails;
    return json;
  }

  static List<ContributionNodeQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionNodeQueryResult>() : json.map((value) => ContributionNodeQueryResult.fromJson(value)).toList();
  }

  static Map<String, ContributionNodeQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionNodeQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionNodeQueryResult.fromJson(value));
    }
    return map;
  }
}

