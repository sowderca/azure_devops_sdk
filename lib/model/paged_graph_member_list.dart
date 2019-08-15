part of azure_devops_sdk.api;

class PagedGraphMemberList {
  
  List<UserEntitlement> members = [];
  PagedGraphMemberList();

  @override
  String toString() {
    return 'PagedGraphMemberList[members=$members, ]';
  }

  PagedGraphMemberList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['members'] == null) {
      members = null;
    } else {
      members = UserEntitlement.listFromJson(json['members']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (members != null)
      json['members'] = members;
    return json;
  }

  static List<PagedGraphMemberList> listFromJson(List<dynamic> json) {
    return json == null ? List<PagedGraphMemberList>() : json.map((value) => PagedGraphMemberList.fromJson(value)).toList();
  }

  static Map<String, PagedGraphMemberList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PagedGraphMemberList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PagedGraphMemberList.fromJson(value));
    }
    return map;
  }
}

