part of azure_devops_sdk.api;

class Section {
  /* List of child groups in this section */
  List<Group> groups = [];
  /* The id for the layout node. */
  String id = null;
  /* A value indicating whether this layout node has been overridden by a child layout. */
  bool overridden = null;
  Section();

  @override
  String toString() {
    return 'Section[groups=$groups, id=$id, overridden=$overridden, ]';
  }

  Section.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['groups'] == null) {
      groups = null;
    } else {
      groups = Group.listFromJson(json['groups']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['overridden'] == null) {
      overridden = null;
    } else {
          overridden = json['overridden'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (groups != null)
      json['groups'] = groups;
    if (id != null)
      json['id'] = id;
    if (overridden != null)
      json['overridden'] = overridden;
    return json;
  }

  static List<Section> listFromJson(List<dynamic> json) {
    return json == null ? List<Section>() : json.map((value) => Section.fromJson(value)).toList();
  }

  static Map<String, Section> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Section>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Section.fromJson(value));
    }
    return map;
  }
}

