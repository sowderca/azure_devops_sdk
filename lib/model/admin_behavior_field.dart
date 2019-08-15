part of azure_devops_sdk.api;

class AdminBehaviorField {
  /* The behavior field identifier. */
  String behaviorFieldId = null;
  /* The behavior ID. */
  String id = null;
  /* The behavior name. */
  String name = null;
  AdminBehaviorField();

  @override
  String toString() {
    return 'AdminBehaviorField[behaviorFieldId=$behaviorFieldId, id=$id, name=$name, ]';
  }

  AdminBehaviorField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['behaviorFieldId'] == null) {
      behaviorFieldId = null;
    } else {
          behaviorFieldId = json['behaviorFieldId'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (behaviorFieldId != null)
      json['behaviorFieldId'] = behaviorFieldId;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<AdminBehaviorField> listFromJson(List<dynamic> json) {
    return json == null ? List<AdminBehaviorField>() : json.map((value) => AdminBehaviorField.fromJson(value)).toList();
  }

  static Map<String, AdminBehaviorField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AdminBehaviorField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AdminBehaviorField.fromJson(value));
    }
    return map;
  }
}

