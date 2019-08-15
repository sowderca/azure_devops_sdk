part of azure_devops_sdk.api;

class ClientContributionNode {
  /* List of ids for contributions which are children to the current contribution. */
  List<String> children = [];
  
  ClientContribution contribution = null;
  /* List of ids for contributions which are parents to the current contribution. */
  List<String> parents = [];
  ClientContributionNode();

  @override
  String toString() {
    return 'ClientContributionNode[children=$children, contribution=$contribution, parents=$parents, ]';
  }

  ClientContributionNode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['children'] == null) {
      children = null;
    } else {
      children = (json['children'] as List).cast<String>();
    }
    if (json['contribution'] == null) {
      contribution = null;
    } else {
      contribution = ClientContribution.fromJson(json['contribution']);
    }
    if (json['parents'] == null) {
      parents = null;
    } else {
      parents = (json['parents'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (children != null)
      json['children'] = children;
    if (contribution != null)
      json['contribution'] = contribution;
    if (parents != null)
      json['parents'] = parents;
    return json;
  }

  static List<ClientContributionNode> listFromJson(List<dynamic> json) {
    return json == null ? List<ClientContributionNode>() : json.map((value) => ClientContributionNode.fromJson(value)).toList();
  }

  static Map<String, ClientContributionNode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ClientContributionNode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ClientContributionNode.fromJson(value));
    }
    return map;
  }
}

