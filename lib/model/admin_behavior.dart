part of azure_devops_sdk.api;

class AdminBehavior {
  /* Is the behavior abstract (i.e. can not be associated with any work item type). */
  bool abstract_ = null;
  /* The color associated with the behavior. */
  String color = null;
  /* Indicates if the behavior is custom. */
  bool custom = null;
  /* The description of the behavior. */
  String description = null;
  /* List of behavior fields. */
  List<AdminBehaviorField> fields = [];
  /* Behavior ID. */
  String id = null;
  /* Parent behavior reference. */
  String inherits = null;
  /* The behavior name. */
  String name = null;
  /* Is the behavior overrides a behavior from system process. */
  bool overriden = null;
  /* The rank. */
  int rank = null;
  AdminBehavior();

  @override
  String toString() {
    return 'AdminBehavior[abstract_=$abstract_, color=$color, custom=$custom, description=$description, fields=$fields, id=$id, inherits=$inherits, name=$name, overriden=$overriden, rank=$rank, ]';
  }

  AdminBehavior.fromJson(Map<String, dynamic> json) {
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
    if (json['custom'] == null) {
      custom = null;
    } else {
          custom = json['custom'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = AdminBehaviorField.listFromJson(json['fields']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inherits'] == null) {
      inherits = null;
    } else {
          inherits = json['inherits'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (abstract_ != null)
      json['abstract'] = abstract_;
    if (color != null)
      json['color'] = color;
    if (custom != null)
      json['custom'] = custom;
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
    return json;
  }

  static List<AdminBehavior> listFromJson(List<dynamic> json) {
    return json == null ? List<AdminBehavior>() : json.map((value) => AdminBehavior.fromJson(value)).toList();
  }

  static Map<String, AdminBehavior> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AdminBehavior>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AdminBehavior.fromJson(value));
    }
    return map;
  }
}

