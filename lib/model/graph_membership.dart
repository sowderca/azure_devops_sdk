part of azure_devops_sdk.api;

class GraphMembership {
  
  ReferenceLinks links = null;
  
  String containerDescriptor = null;
  
  String memberDescriptor = null;
  GraphMembership();

  @override
  String toString() {
    return 'GraphMembership[links=$links, containerDescriptor=$containerDescriptor, memberDescriptor=$memberDescriptor, ]';
  }

  GraphMembership.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['containerDescriptor'] == null) {
      containerDescriptor = null;
    } else {
          containerDescriptor = json['containerDescriptor'];
    }
    if (json['memberDescriptor'] == null) {
      memberDescriptor = null;
    } else {
          memberDescriptor = json['memberDescriptor'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (containerDescriptor != null)
      json['containerDescriptor'] = containerDescriptor;
    if (memberDescriptor != null)
      json['memberDescriptor'] = memberDescriptor;
    return json;
  }

  static List<GraphMembership> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphMembership>() : json.map((value) => GraphMembership.fromJson(value)).toList();
  }

  static Map<String, GraphMembership> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphMembership>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphMembership.fromJson(value));
    }
    return map;
  }
}

