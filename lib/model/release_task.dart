part of azure_devops_sdk.api;

class ReleaseTask {
  /* Agent name on which task executed. */
  String agentName = null;
  /* Finish time of the release task. */
  DateTime finishTime = null;
  /* ID of the release task. */
  int id = null;
  /* List of issues occurred while execution of task. */
  List<Issue> issues = [];
  /* Number of lines log release task has. */
  int lineCount = null;
  /* Log URL of the task. */
  String logUrl = null;
  /* Name of the task. */
  String name = null;
  /* Task execution complete precent. */
  int percentComplete = null;
  /* Rank of the release task. */
  int rank = null;
  /* Result code of the task. */
  String resultCode = null;
  /* ID of the release task. */
  DateTime startTime = null;
  /* Status of release task. */
  String status = null;
  //enum statusEnum {  unknown,  pending,  inProgress,  success,  failure,  canceled,  skipped,  succeeded,  failed,  partiallySucceeded,  };{
  
  WorkflowTaskReference task = null;
  /* Timeline record ID of the release task. */
  String timelineRecordId = null;
  ReleaseTask();

  @override
  String toString() {
    return 'ReleaseTask[agentName=$agentName, finishTime=$finishTime, id=$id, issues=$issues, lineCount=$lineCount, logUrl=$logUrl, name=$name, percentComplete=$percentComplete, rank=$rank, resultCode=$resultCode, startTime=$startTime, status=$status, task=$task, timelineRecordId=$timelineRecordId, ]';
  }

  ReleaseTask.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['agentName'] == null) {
      agentName = null;
    } else {
          agentName = json['agentName'];
    }
    if (json['finishTime'] == null) {
      finishTime = null;
    } else {
      finishTime = DateTime.parse(json['finishTime']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['issues'] == null) {
      issues = null;
    } else {
      issues = Issue.listFromJson(json['issues']);
    }
    if (json['lineCount'] == null) {
      lineCount = null;
    } else {
          lineCount = json['lineCount'];
    }
    if (json['logUrl'] == null) {
      logUrl = null;
    } else {
          logUrl = json['logUrl'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['percentComplete'] == null) {
      percentComplete = null;
    } else {
          percentComplete = json['percentComplete'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['resultCode'] == null) {
      resultCode = null;
    } else {
          resultCode = json['resultCode'];
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
    if (json['task'] == null) {
      task = null;
    } else {
      task = WorkflowTaskReference.fromJson(json['task']);
    }
    if (json['timelineRecordId'] == null) {
      timelineRecordId = null;
    } else {
          timelineRecordId = json['timelineRecordId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (agentName != null)
      json['agentName'] = agentName;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (issues != null)
      json['issues'] = issues;
    if (lineCount != null)
      json['lineCount'] = lineCount;
    if (logUrl != null)
      json['logUrl'] = logUrl;
    if (name != null)
      json['name'] = name;
    if (percentComplete != null)
      json['percentComplete'] = percentComplete;
    if (rank != null)
      json['rank'] = rank;
    if (resultCode != null)
      json['resultCode'] = resultCode;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (task != null)
      json['task'] = task;
    if (timelineRecordId != null)
      json['timelineRecordId'] = timelineRecordId;
    return json;
  }

  static List<ReleaseTask> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseTask>() : json.map((value) => ReleaseTask.fromJson(value)).toList();
  }

  static Map<String, ReleaseTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseTask.fromJson(value));
    }
    return map;
  }
}

