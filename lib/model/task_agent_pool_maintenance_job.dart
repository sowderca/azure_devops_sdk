part of azure_devops_sdk.api;

class TaskAgentPoolMaintenanceJob {
  /* The maintenance definition for the maintenance job */
  int definitionId = null;
  /* The total error counts during the maintenance job */
  int errorCount = null;
  /* Time that the maintenance job was completed */
  DateTime finishTime = null;
  /* Id of the maintenance job */
  int jobId = null;
  /* The log download url for the maintenance job */
  String logsDownloadUrl = null;
  /* Orchestration/Plan Id for the maintenance job */
  String orchestrationId = null;
  
  TaskAgentPoolReference pool = null;
  /* Time that the maintenance job was queued */
  DateTime queueTime = null;
  
  IdentityRef requestedBy = null;
  /* The maintenance job result */
  String result = null;
  //enum resultEnum {  succeeded,  failed,  canceled,  };{
  /* Time that the maintenance job was started */
  DateTime startTime = null;
  /* Status of the maintenance job */
  String status = null;
  //enum statusEnum {  inProgress,  completed,  cancelling,  queued,  };{
  
  List<TaskAgentPoolMaintenanceJobTargetAgent> targetAgents = [];
  /* The total warning counts during the maintenance job */
  int warningCount = null;
  TaskAgentPoolMaintenanceJob();

  @override
  String toString() {
    return 'TaskAgentPoolMaintenanceJob[definitionId=$definitionId, errorCount=$errorCount, finishTime=$finishTime, jobId=$jobId, logsDownloadUrl=$logsDownloadUrl, orchestrationId=$orchestrationId, pool=$pool, queueTime=$queueTime, requestedBy=$requestedBy, result=$result, startTime=$startTime, status=$status, targetAgents=$targetAgents, warningCount=$warningCount, ]';
  }

  TaskAgentPoolMaintenanceJob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['definitionId'] == null) {
      definitionId = null;
    } else {
          definitionId = json['definitionId'];
    }
    if (json['errorCount'] == null) {
      errorCount = null;
    } else {
          errorCount = json['errorCount'];
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
    }
    if (json['logsDownloadUrl'] == null) {
      logsDownloadUrl = null;
    } else {
          logsDownloadUrl = json['logsDownloadUrl'];
    }
    if (json['orchestrationId'] == null) {
      orchestrationId = null;
    } else {
          orchestrationId = json['orchestrationId'];
    }
    if (json['pool'] == null) {
      pool = null;
    } else {
      pool = TaskAgentPoolReference.fromJson(json['pool']);
    }
    if (json['queueTime'] == null) {
      queueTime = null;
    } else {
      queueTime = DateTime.parse(json['queueTime']);
    }
    if (json['requestedBy'] == null) {
      requestedBy = null;
    } else {
      requestedBy = IdentityRef.fromJson(json['requestedBy']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['startTime'] == null) {
      startTime = null;
    } else {
      startTime = DateTime.parse(json['startTime']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['targetAgents'] == null) {
      targetAgents = null;
    } else {
      targetAgents = TaskAgentPoolMaintenanceJobTargetAgent.listFromJson(json['targetAgents']);
    }
    if (json['warningCount'] == null) {
      warningCount = null;
    } else {
          warningCount = json['warningCount'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (definitionId != null)
      json['definitionId'] = definitionId;
    if (errorCount != null)
      json['errorCount'] = errorCount;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (jobId != null)
      json['jobId'] = jobId;
    if (logsDownloadUrl != null)
      json['logsDownloadUrl'] = logsDownloadUrl;
    if (orchestrationId != null)
      json['orchestrationId'] = orchestrationId;
    if (pool != null)
      json['pool'] = pool;
    if (queueTime != null)
      json['queueTime'] = queueTime == null ? null : queueTime.toUtc().toIso8601String();
    if (requestedBy != null)
      json['requestedBy'] = requestedBy;
    if (result != null)
      json['result'] = result;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (targetAgents != null)
      json['targetAgents'] = targetAgents;
    if (warningCount != null)
      json['warningCount'] = warningCount;
    return json;
  }

  static List<TaskAgentPoolMaintenanceJob> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolMaintenanceJob>() : json.map((value) => TaskAgentPoolMaintenanceJob.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolMaintenanceJob> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolMaintenanceJob>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolMaintenanceJob.fromJson(value));
    }
    return map;
  }
}

