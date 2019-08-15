part of azure_devops_sdk.api;

class CreateProcessModel {
  /* Description of the process */
  String description = null;
  /* Name of the process */
  String name = null;
  /* The ID of the parent process */
  String parentProcessTypeId = null;
  /* Reference name of process being created. If not specified, server will assign a unique reference name */
  String referenceName = null;
  CreateProcessModel();

  @override
  String toString() {
    return 'CreateProcessModel[description=$description, name=$name, parentProcessTypeId=$parentProcessTypeId, referenceName=$referenceName, ]';
  }

  CreateProcessModel.fromJson(Map<String, dynamic> json) {
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
    if (json['parentProcessTypeId'] == null) {
      parentProcessTypeId = null;
    } else {
          parentProcessTypeId = json['parentProcessTypeId'];
    }
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    if (parentProcessTypeId != null)
      json['parentProcessTypeId'] = parentProcessTypeId;
    if (referenceName != null)
      json['referenceName'] = referenceName;
    return json;
  }

  static List<CreateProcessModel> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateProcessModel>() : json.map((value) => CreateProcessModel.fromJson(value)).toList();
  }

  static Map<String, CreateProcessModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateProcessModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateProcessModel.fromJson(value));
    }
    return map;
  }
}

