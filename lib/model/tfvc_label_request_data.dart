part of azure_devops_sdk.api;

class TfvcLabelRequestData {
  /* Whether to include the _links field on the shallow references */
  bool includeLinks = null;
  
  String itemLabelFilter = null;
  
  String labelScope = null;
  
  int maxItemCount = null;
  
  String name = null;
  
  String owner = null;
  TfvcLabelRequestData();

  @override
  String toString() {
    return 'TfvcLabelRequestData[includeLinks=$includeLinks, itemLabelFilter=$itemLabelFilter, labelScope=$labelScope, maxItemCount=$maxItemCount, name=$name, owner=$owner, ]';
  }

  TfvcLabelRequestData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['includeLinks'] == null) {
      includeLinks = null;
    } else {
          includeLinks = json['includeLinks'];
    }
    if (json['itemLabelFilter'] == null) {
      itemLabelFilter = null;
    } else {
          itemLabelFilter = json['itemLabelFilter'];
    }
    if (json['labelScope'] == null) {
      labelScope = null;
    } else {
          labelScope = json['labelScope'];
    }
    if (json['maxItemCount'] == null) {
      maxItemCount = null;
    } else {
          maxItemCount = json['maxItemCount'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['owner'] == null) {
      owner = null;
    } else {
          owner = json['owner'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (includeLinks != null)
      json['includeLinks'] = includeLinks;
    if (itemLabelFilter != null)
      json['itemLabelFilter'] = itemLabelFilter;
    if (labelScope != null)
      json['labelScope'] = labelScope;
    if (maxItemCount != null)
      json['maxItemCount'] = maxItemCount;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    return json;
  }

  static List<TfvcLabelRequestData> listFromJson(List<dynamic> json) {
    return json == null ? List<TfvcLabelRequestData>() : json.map((value) => TfvcLabelRequestData.fromJson(value)).toList();
  }

  static Map<String, TfvcLabelRequestData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TfvcLabelRequestData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TfvcLabelRequestData.fromJson(value));
    }
    return map;
  }
}

