part of azure_devops_sdk.api;

class ContributionPropertyDescription {
  /* Description of the property */
  String description = null;
  /* Name of the property */
  String name = null;
  /* True if this property is required */
  bool required = null;
  /* The type of value used for this property */
  String type = null;
  //enum typeEnum {  unknown,  string,  uri,  guid,  boolean,  integer,  double,  dateTime,  dictionary,  array,  object,  };{
  ContributionPropertyDescription();

  @override
  String toString() {
    return 'ContributionPropertyDescription[description=$description, name=$name, required=$required, type=$type, ]';
  }

  ContributionPropertyDescription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['required'] == null) {
      required = null;
    } else {
          required = json['required'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (required != null)
      json['required'] = required;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ContributionPropertyDescription> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionPropertyDescription>() : json.map((value) => ContributionPropertyDescription.fromJson(value)).toList();
  }

  static Map<String, ContributionPropertyDescription> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionPropertyDescription>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionPropertyDescription.fromJson(value));
    }
    return map;
  }
}

