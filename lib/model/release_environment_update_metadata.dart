part of azure_devops_sdk.api;

class ReleaseEnvironmentUpdateMetadata {
  /* Gets or sets comment. */
  String comment = null;
  /* Gets or sets scheduled deployment time. */
  DateTime scheduledDeploymentTime = null;
  /* Gets or sets status of environment. */
  String status = null;
  //enum statusEnum {  undefined,  notStarted,  inProgress,  succeeded,  canceled,  rejected,  queued,  scheduled,  partiallySucceeded,  };{
  /* Sets list of environment variables to be overridden at deployment time. */
  Map<String, ConfigurationVariableValue> variables = {};
  ReleaseEnvironmentUpdateMetadata();

  @override
  String toString() {
    return 'ReleaseEnvironmentUpdateMetadata[comment=$comment, scheduledDeploymentTime=$scheduledDeploymentTime, status=$status, variables=$variables, ]';
  }

  ReleaseEnvironmentUpdateMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['scheduledDeploymentTime'] == null) {
      scheduledDeploymentTime = null;
    } else {
      scheduledDeploymentTime = DateTime.parse(json['scheduledDeploymentTime']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
      variables = ConfigurationVariableValue.mapFromJson(json['variables']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (scheduledDeploymentTime != null)
      json['scheduledDeploymentTime'] = scheduledDeploymentTime == null ? null : scheduledDeploymentTime.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<ReleaseEnvironmentUpdateMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseEnvironmentUpdateMetadata>() : json.map((value) => ReleaseEnvironmentUpdateMetadata.fromJson(value)).toList();
  }

  static Map<String, ReleaseEnvironmentUpdateMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseEnvironmentUpdateMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseEnvironmentUpdateMetadata.fromJson(value));
    }
    return map;
  }
}

