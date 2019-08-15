part of azure_devops_sdk.api;

class ProcessBehavior {
  /* Color. */
  String color = null;
  /* Indicates the type of customization on this work item. System behaviors are inherited from parent process but not modified. Inherited behaviors are modified modified behaviors that were inherited from parent process. Custom behaviors are behaviors created by user in current process. */
  String customization = null;
  //enum customizationEnum {  system,  inherited,  custom,  };{
  /* . Description */
  String description = null;
  /* Process Behavior Fields. */
  List<ProcessBehaviorField> fields = [];
  
  ProcessBehaviorReference inherits = null;
  /* Behavior Name. */
  String name = null;
  /* Rank of the behavior */
  int rank = null;
  /* Behavior Id */
  String referenceName = null;
  /* Url of the behavior. */
  String url = null;
  ProcessBehavior();

  @override
  String toString() {
    return 'ProcessBehavior[color=$color, customization=$customization, description=$description, fields=$fields, inherits=$inherits, name=$name, rank=$rank, referenceName=$referenceName, url=$url, ]';
  }

  ProcessBehavior.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['customization'] == null) {
      customization = null;
    } else {
          customization = json['customization'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
      fields = ProcessBehaviorField.listFromJson(json['fields']);
    }
    if (json['inherits'] == null) {
      inherits = null;
    } else {
      inherits = ProcessBehaviorReference.fromJson(json['inherits']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (customization != null)
      json['customization'] = customization;
    if (description != null)
      json['description'] = description;
    if (fields != null)
      json['fields'] = fields;
    if (inherits != null)
      json['inherits'] = inherits;
    if (name != null)
      json['name'] = name;
    if (rank != null)
      json['rank'] = rank;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ProcessBehavior> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessBehavior>() : json.map((value) => ProcessBehavior.fromJson(value)).toList();
  }

  static Map<String, ProcessBehavior> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessBehavior>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessBehavior.fromJson(value));
    }
    return map;
  }
}

