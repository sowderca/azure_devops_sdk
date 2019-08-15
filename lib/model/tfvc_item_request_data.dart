part of azure_devops_sdk.api;

class TfvcItemRequestData {
  /* If true, include metadata about the file type */
  bool includeContentMetadata = null;
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  
  List<TfvcItemDescriptor> itemDescriptors = [];
  TfvcItemRequestData();

  @override
  String toString() {
    return 'TfvcItemRequestData[includeContentMetadata=$includeContentMetadata, includeLinks=$includeLinks, itemDescriptors=$itemDescriptors, ]';
  }

  TfvcItemRequestData.fromJson(Map<String, dynamic> json) {
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
      itemDescriptors = TfvcItemDescriptor.listFromJson(json['itemDescriptors']);
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
    return json;
  }

  static List<TfvcItemRequestData> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcItemRequestData>() : json.map((value) => TfvcItemRequestData.fromJson(value)).toList();
  }

  static Map<String, TfvcItemRequestData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcItemRequestData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcItemRequestData.fromJson(value));
    }
    return map;
  }
}

