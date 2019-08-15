part of azure_devops_sdk.api;

class TimelineRecord {
  
  ReferenceLinks links = null;
  /* Attempt number of record. */
  int attempt = null;
  /* The change ID. */
  int changeId = null;
  /* A string that indicates the current operation. */
  String currentOperation = null;
  
  TimelineReference details = null;
  /* The number of errors produced by this operation. */
  int errorCount = null;
  /* The finish time. */
  DateTime finishTime = null;
  /* The ID of the record. */
  String id = null;
  /* String identifier that is consistent across attempts. */
  String identifier = null;
  
  List<Issue> issues = [];
  /* The time the record was last modified. */
  DateTime lastModified = null;
  
  BuildLogReference log = null;
  /* The name. */
  String name = null;
  /* An ordinal value relative to other records. */
  int order = null;
  /* The ID of the record's parent. */
  String parentId = null;
  /* The current completion percentage. */
  int percentComplete = null;
  
  List<TimelineAttempt> previousAttempts = [];
  /* The result. */
  String result = null;
  //enum resultEnum {  succeeded,  succeededWithIssues,  failed,  canceled,  skipped,  abandoned,  };{
  /* The result code. */
  String resultCode = null;
  /* The start time. */
  DateTime startTime = null;
  /* The state of the record. */
  String state = null;
  //enum stateEnum {  pending,  inProgress,  completed,  };{
  
  TaskReference task = null;
  /* The type of the record. */
  String type = null;
  /* The REST URL of the timeline record. */
  String url = null;
  /* The number of warnings produced by this operation. */
  int warningCount = null;
  /* The name of the agent running the operation. */
  String workerName = null;
  TimelineRecord();

  @override
  String toString() {
    return 'TimelineRecord[links=$links, attempt=$attempt, changeId=$changeId, currentOperation=$currentOperation, details=$details, errorCount=$errorCount, finishTime=$finishTime, id=$id, identifier=$identifier, issues=$issues, lastModified=$lastModified, log=$log, name=$name, order=$order, parentId=$parentId, percentComplete=$percentComplete, previousAttempts=$previousAttempts, result=$result, resultCode=$resultCode, startTime=$startTime, state=$state, task=$task, type=$type, url=$url, warningCount=$warningCount, workerName=$workerName, ]';
  }

  TimelineRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['changeId'] == null) {
      changeId = null;
    } else {
          changeId = json['changeId'];
    }
    if (json['currentOperation'] == null) {
      currentOperation = null;
    } else {
          currentOperation = json['currentOperation'];
    }
    if (json['details'] == null) {
      details = null;
    } else {
      details = TimelineReference.fromJson(json['details']);
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['identifier'] == null) {
      identifier = null;
    } else {
          identifier = json['identifier'];
    }
    if (json['issues'] == null) {
      issues = null;
    } else {
      issues = Issue.listFromJson(json['issues']);
    }
    if (json['lastModified'] == null) {
      lastModified = null;
    } else {
      lastModified = DateTime.parse(json['lastModified']);
    }
    if (json['log'] == null) {
      log = null;
    } else {
      log = BuildLogReference.fromJson(json['log']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['order'] == null) {
      order = null;
    } else {
          order = json['order'];
    }
    if (json['parentId'] == null) {
      parentId = null;
    } else {
          parentId = json['parentId'];
    }
    if (json['percentComplete'] == null) {
      percentComplete = null;
    } else {
          percentComplete = json['percentComplete'];
    }
    if (json['previousAttempts'] == null) {
      previousAttempts = null;
    } else {
      previousAttempts = TimelineAttempt.listFromJson(json['previousAttempts']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
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
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['task'] == null) {
      task = null;
    } else {
      task = TaskReference.fromJson(json['task']);
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['warningCount'] == null) {
      warningCount = null;
    } else {
          warningCount = json['warningCount'];
    }
    if (json['workerName'] == null) {
      workerName = null;
    } else {
          workerName = json['workerName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (attempt != null)
      json['attempt'] = attempt;
    if (changeId != null)
      json['changeId'] = changeId;
    if (currentOperation != null)
      json['currentOperation'] = currentOperation;
    if (details != null)
      json['details'] = details;
    if (errorCount != null)
      json['errorCount'] = errorCount;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (identifier != null)
      json['identifier'] = identifier;
    if (issues != null)
      json['issues'] = issues;
    if (lastModified != null)
      json['lastModified'] = lastModified == null ? null : lastModified.toUtc().toIso8601String();
    if (log != null)
      json['log'] = log;
    if (name != null)
      json['name'] = name;
    if (order != null)
      json['order'] = order;
    if (parentId != null)
      json['parentId'] = parentId;
    if (percentComplete != null)
      json['percentComplete'] = percentComplete;
    if (previousAttempts != null)
      json['previousAttempts'] = previousAttempts;
    if (result != null)
      json['result'] = result;
    if (resultCode != null)
      json['resultCode'] = resultCode;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (task != null)
      json['task'] = task;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    if (warningCount != null)
      json['warningCount'] = warningCount;
    if (workerName != null)
      json['workerName'] = workerName;
    return json;
  }

  static List<TimelineRecord> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineRecord>() : json.map((value) => TimelineRecord.fromJson(value)).toList();
  }

  static Map<String, TimelineRecord> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineRecord>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineRecord.fromJson(value));
    }
    return map;
  }
}

