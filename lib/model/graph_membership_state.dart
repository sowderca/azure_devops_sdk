part of azure_devops_sdk.api;

class GraphMembershipState {
  
  ReferenceLinks links = null;
  /* When true, the membership is active */
  bool active = null;
  GraphMembershipState();

  @override
  String toString() {
    return 'GraphMembershipState[links=$links, active=$active, ]';
  }

  GraphMembershipState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['active'] == null) {
      active = null;
    } else {
          active = json['active'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (active != null)
      json['active'] = active;
    return json;
  }

  static List<GraphMembershipState> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphMembershipState>() : json.map((value) => GraphMembershipState.fromJson(value)).toList();
  }

  static Map<String, GraphMembershipState> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphMembershipState>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphMembershipState.fromJson(value));
    }
    return map;
  }
}

