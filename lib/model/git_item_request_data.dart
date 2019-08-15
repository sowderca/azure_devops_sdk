part of azure_devops_sdk.api;

class GitItemRequestData {
  /* Whether to include metadata for all items */
  bool includeContentMetadata = null;
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  /* Collection of items to fetch, including path, version, and recursion level */
  List<GitItemDescriptor> itemDescriptors = [];
  /* Whether to include shallow ref to commit that last changed each item */
  bool latestProcessedChange = null;
  GitItemRequestData();

  @override
  String toString() {
    return 'GitItemRequestData[includeContentMetadata=$includeContentMetadata, includeLinks=$includeLinks, itemDescriptors=$itemDescriptors, latestProcessedChange=$latestProcessedChange, ]';
  }

  GitItemRequestData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeContentMetadata'] == null) {
      includeContentMetadata = null;
    } else {
          includeContentMetadata = json['includeContentMetadata'];
    }
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['itemDescriptors'] == null) {
      itemDescriptors = null;
    } else {
      itemDescriptors = GitItemDescriptor.listFromJson(json['itemDescriptors']);
    }
    if (json['latestProcessedChange'] == null) {
      latestProcessedChange = null;
    } else {
          latestProcessedChange = json['latestProcessedChange'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeContentMetadata != null)
      json['includeContentMetadata'] = includeContentMetadata;
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (itemDescriptors != null)
      json['itemDescriptors'] = itemDescriptors;
    if (latestProcessedChange != null)
      json['latestProcessedChange'] = latestProcessedChange;
    return json;
  }

  static List<GitItemRequestData> listFromJson(List<dynamic> json) {
    return json == null ? List<GitItemRequestData>() : json.map((value) => GitItemRequestData.fromJson(value)).toList();
  }

  static Map<String, GitItemRequestData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitItemRequestData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitItemRequestData.fromJson(value));
    }
    return map;
  }
}

