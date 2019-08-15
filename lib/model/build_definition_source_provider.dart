part of azure_devops_sdk.api;

class BuildDefinitionSourceProvider {
  /* Uri of the associated definition */
  String definitionUri = null;
  /* fields associated with this build definition */
  Map<String, String> fields = {};
  /* Id of this source provider */
  int id = null;
  /* The lst time this source provider was modified */
  DateTime lastModified = null;
  /* Name of the source provider */
  String name = null;
  /* Which trigger types are supported by this definition source provider */
  String supportedTriggerTypes = null;
  //enum supportedTriggerTypesEnum {  none,  continuousIntegration,  batchedContinuousIntegration,  schedule,  gatedCheckIn,  batchedGatedCheckIn,  pullRequest,  buildCompletion,  all,  };{
  BuildDefinitionSourceProvider();

  @override
  String toString() {
    return 'BuildDefinitionSourceProvider[definitionUri=$definitionUri, fields=$fields, id=$id, lastModified=$lastModified, name=$name, supportedTriggerTypes=$supportedTriggerTypes, ]';
  }

  BuildDefinitionSourceProvider.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionUri'] == null) {
      definitionUri = null;
    } else {
          definitionUri = json['definitionUri'];
    }
    if (json['fields'] == null) {
      fields = null;
    } else {
          fields = (json['fields'] as Map).cast<String, String>();
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['lastModified'] == null) {
      lastModified = null;
    } else {
      lastModified = DateTime.parse(json['lastModified']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['supportedTriggerTypes'] == null) {
      supportedTriggerTypes = null;
    } else {
          supportedTriggerTypes = json['supportedTriggerTypes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionUri != null)
      json['definitionUri'] = definitionUri;
    if (fields != null)
      json['fields'] = fields;
    if (id != null)
      json['id'] = id;
    if (lastModified != null)
      json['lastModified'] = lastModified == null ? null : lastModified.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (supportedTriggerTypes != null)
      json['supportedTriggerTypes'] = supportedTriggerTypes;
    return json;
  }

  static List<BuildDefinitionSourceProvider> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildDefinitionSourceProvider>() : json.map((value) => BuildDefinitionSourceProvider.fromJson(value)).toList();
  }

  static Map<String, BuildDefinitionSourceProvider> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildDefinitionSourceProvider>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildDefinitionSourceProvider.fromJson(value));
    }
    return map;
  }
}

