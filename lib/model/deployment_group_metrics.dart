part of azure_devops_sdk.api;

class DeploymentGroupMetrics {
  
  MetricsColumnsHeader columnsHeader = null;
  
  DeploymentGroupReference deploymentGroup = null;
  /* Values of properties and the metrics. E.g. 1: total count of deployment targets for which 'TargetState' is 'offline'. E.g. 2: Average time of deployment to the deployment targets for which 'LastJobStatus' is 'passed' and 'TargetState' is 'online'. */
  List<MetricsRow> rows = [];
  DeploymentGroupMetrics();

  @override
  String toString() {
    return 'DeploymentGroupMetrics[columnsHeader=$columnsHeader, deploymentGroup=$deploymentGroup, rows=$rows, ]';
  }

  DeploymentGroupMetrics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnsHeader'] == null) {
      columnsHeader = null;
    } else {
      columnsHeader = MetricsColumnsHeader.fromJson(json['columnsHeader']);
    }
    if (json['deploymentGroup'] == null) {
      deploymentGroup = null;
    } else {
      deploymentGroup = DeploymentGroupReference.fromJson(json['deploymentGroup']);
    }
    if (json['rows'] == null) {
      rows = null;
    } else {
      rows = MetricsRow.listFromJson(json['rows']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnsHeader != null)
      json['columnsHeader'] = columnsHeader;
    if (deploymentGroup != null)
      json['deploymentGroup'] = deploymentGroup;
    if (rows != null)
      json['rows'] = rows;
    return json;
  }

  static List<DeploymentGroupMetrics> listFromJson(List<dynamic> json) {
    return json == null ? List<DeploymentGroupMetrics>() : json.map((value) => DeploymentGroupMetrics.fromJson(value)).toList();
  }

  static Map<String, DeploymentGroupMetrics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeploymentGroupMetrics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeploymentGroupMetrics.fromJson(value));
    }
    return map;
  }
}

