part of azure_devops_sdk.api;

class UpdateProcessModel {
  /* New description of the process */
  String description = null;
  /* If true new projects will use this process by default */
  bool isDefault = null;
  /* If false the process will be disabled and cannot be used to create projects */
  bool isEnabled = null;
  /* New name of the process */
  String name = null;
  UpdateProcessModel();

  @override
  String toString() {
    return 'UpdateProcessModel[description=$description, isDefault=$isDefault, isEnabled=$isEnabled, name=$name, ]';
  }

  UpdateProcessModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
    }
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<UpdateProcessModel> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateProcessModel>() : json.map((value) => UpdateProcessModel.fromJson(value)).toList();
  }

  static Map<String, UpdateProcessModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateProcessModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateProcessModel.fromJson(value));
    }
    return map;
  }
}

