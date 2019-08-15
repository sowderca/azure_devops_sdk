part of azure_devops_sdk.api;

class NotificationEventField {
  
  NotificationEventFieldType fieldType = null;
  /* Gets or sets the unique identifier of this field. */
  String id = null;
  /* Gets or sets the name of this field. */
  String name = null;
  /* Gets or sets the path to the field in the event object. This path can be either Json Path or XPath, depending on if the event will be serialized into Json or XML */
  String path = null;
  /* Gets or sets the scopes that this field supports. If not specified then the event type scopes apply. */
  List<String> supportedScopes = [];
  NotificationEventField();

  @override
  String toString() {
    return 'NotificationEventField[fieldType=$fieldType, id=$id, name=$name, path=$path, supportedScopes=$supportedScopes, ]';
  }

  NotificationEventField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['fieldType'] == null) {
      fieldType = null;
    } else {
      fieldType = NotificationEventFieldType.fromJson(json['fieldType']);
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
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['supportedScopes'] == null) {
      supportedScopes = null;
    } else {
      supportedScopes = (json['supportedScopes'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldType != null)
      json['fieldType'] = fieldType;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    if (supportedScopes != null)
      json['supportedScopes'] = supportedScopes;
    return json;
  }

  static List<NotificationEventField> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationEventField>() : json.map((value) => NotificationEventField.fromJson(value)).toList();
  }

  static Map<String, NotificationEventField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationEventField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationEventField.fromJson(value));
    }
    return map;
  }
}

