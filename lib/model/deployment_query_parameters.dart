part of azure_devops_sdk.api;

class DeploymentQueryParameters {
  /* Query deployments based specified artifact source id. */
  String artifactSourceId = null;
  /* Query deployments based specified artifact type id. */
  String artifactTypeId = null;
  /* Query deployments based specified artifact versions. */
  List<String> artifactVersions = [];
  /* Query deployments number of deployments per environment. */
  int deploymentsPerEnvironment = null;
  /* Query deployment based on deployment status. */
  String deploymentStatus = null;
  //enum deploymentStatusEnum {  undefined,  notDeployed,  inProgress,  succeeded,  partiallySucceeded,  failed,  all,  };{
  /* Query deployments of specified environments. */
  List<DefinitionEnvironmentReference> environments = [];
  /* Query deployments based specified expands. */
  String expands = null;
  //enum expandsEnum {  all,  deploymentOnly,  approvals,  artifacts,  };{
  /* Specify deleted deployments should return or not. */
  bool isDeleted = null;
  /* Query deployment based on deployment operation status. */
  String operationStatus = null;
  //enum operationStatusEnum {  undefined,  queued,  scheduled,  pending,  approved,  rejected,  deferred,  queuedForAgent,  phaseInProgress,  phaseSucceeded,  phasePartiallySucceeded,  phaseFailed,  canceled,  phaseCanceled,  manualInterventionPending,  queuedForPipeline,  cancelling,  evaluatingGates,  gateFailed,  all,  };{
  /* Query deployments based query type. */
  String queryType = null;
  //enum queryTypeEnum {  regular,  failingSince,  };{
  /* Query deployments based specified source branch. */
  String sourceBranch = null;
  DeploymentQueryParameters();

  @override
  String toString() {
    return 'DeploymentQueryParameters[artifactSourceId=$artifactSourceId, artifactTypeId=$artifactTypeId, artifactVersions=$artifactVersions, deploymentsPerEnvironment=$deploymentsPerEnvironment, deploymentStatus=$deploymentStatus, environments=$environments, expands=$expands, isDeleted=$isDeleted, operationStatus=$operationStatus, queryType=$queryType, sourceBranch=$sourceBranch, ]';
  }

  DeploymentQueryParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactSourceId'] == null) {
      artifactSourceId = null;
    } else {
          artifactSourceId = json['artifactSourceId'];
    }
    if (json['artifactTypeId'] == null) {
      artifactTypeId = null;
    } else {
          artifactTypeId = json['artifactTypeId'];
    }
    if (json['artifactVersions'] == null) {
      artifactVersions = null;
    } else {
      artifactVersions = (json['artifactVersions'] as List).cast<String>();
    }
    if (json['deploymentsPerEnvironment'] == null) {
      deploymentsPerEnvironment = null;
    } else {
          deploymentsPerEnvironment = json['deploymentsPerEnvironment'];
    }
    if (json['deploymentStatus'] == null) {
      deploymentStatus = null;
    } else {
          deploymentStatus = json['deploymentStatus'];
    }
    if (json['environments'] == null) {
      environments = null;
    } else {
      environments = DefinitionEnvironmentReference.listFromJson(json['environments']);
    }
    if (json['expands'] == null) {
      expands = null;
    } else {
          expands = json['expands'];
    }
    if (json['isDeleted'] == null) {
      isDeleted = null;
    } else {
          isDeleted = json['isDeleted'];
    }
    if (json['operationStatus'] == null) {
      operationStatus = null;
    } else {
          operationStatus = json['operationStatus'];
    }
    if (json['queryType'] == null) {
      queryType = null;
    } else {
          queryType = json['queryType'];
    }
    if (json['sourceBranch'] == null) {
      sourceBranch = null;
    } else {
          sourceBranch = json['sourceBranch'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactSourceId != null)
      json['artifactSourceId'] = artifactSourceId;
    if (artifactTypeId != null)
      json['artifactTypeId'] = artifactTypeId;
    if (artifactVersions != null)
      json['artifactVersions'] = artifactVersions;
    if (deploymentsPerEnvironment != null)
      json['deploymentsPerEnvironment'] = deploymentsPerEnvironment;
    if (deploymentStatus != null)
      json['deploymentStatus'] = deploymentStatus;
    if (environments != null)
      json['environments'] = environments;
    if (expands != null)
      json['expands'] = expands;
    if (isDeleted != null)
      json['isDeleted'] = isDeleted;
    if (operationStatus != null)
      json['operationStatus'] = operationStatus;
    if (queryType != null)
      json['queryType'] = queryType;
    if (sourceBranch != null)
      json['sourceBranch'] = sourceBranch;
    return json;
  }

  static List<DeploymentQueryParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentQueryParameters>() : json.map((value) => DeploymentQueryParameters.fromJson(value)).toList();
  }

  static Map<String, DeploymentQueryParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentQueryParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentQueryParameters.fromJson(value));
    }
    return map;
  }
}

