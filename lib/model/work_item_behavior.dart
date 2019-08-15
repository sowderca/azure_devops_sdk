part of azure_devops_sdk.api;

class WorkItemBehavior {
  
  bool abstract_ = null;
  
  String color = null;
  
  String description = null;
  
  List<WorkItemBehaviorField> fields = [];
  
  String id = null;
  
  WorkItemBehaviorReference inherits = null;
  
  String name = null;
  
  bool overriden = null;
  
  int rank = null;
  
  String url = null;
  WorkItemBehavior();

  @override
  String toString() {
    return 'WorkItemBehavior[abstract_=$abstract_, color=$color, description=$description, fields=$fields, id=$id, inherits=$inherits, name=$name, overriden=$overriden, rank=$rank, url=$url, ]';
  }

  WorkItemBehavior.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['abstract'] == null) {
      abstract_ = null;
    } else {
          abstract_ = json['abstract'];
    }
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = WorkItemBehaviorField.listFromJson(json['fields']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inherits'] == null) {
      inherits = null;
    } else {
      inherits = WorkItemBehaviorReference.fromJson(json['inherits']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['overriden'] == null) {
      overriden = null;
    } else {
          overriden = json['overriden'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (abstract_ != null)
      json['abstract'] = abstract_;
    if (color != null)
      json['color'] = color;
    if (description != null)
      json['description'] = description;
    if (fields != null)
      json['fields'] = fields;
    if (id != null)
      json['id'] = id;
    if (inherits != null)
      json['inherits'] = inherits;
    if (name != null)
      json['name'] = name;
    if (overriden != null)
      json['overriden'] = overriden;
    if (rank != null)
      json['rank'] = rank;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WorkItemBehavior> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemBehavior>() : json.map((value) => WorkItemBehavior.fromJson(value)).toList();
  }

  static Map<String, WorkItemBehavior> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemBehavior>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemBehavior.fromJson(value));
    }
    return map;
  }
}

