part of azure_devops_sdk.api;

class Build {
  
  ReferenceLinks links = null;
  
  AgentSpecification agentSpecification = null;
  /* The build number/name of the build. */
  String buildNumber = null;
  /* The build number revision. */
  int buildNumberRevision = null;
  
  BuildController controller = null;
  
  DefinitionReference definition = null;
  /* Indicates whether the build has been deleted. */
  bool deleted = null;
  
  IdentityRef deletedBy = null;
  /* The date the build was deleted. */
  DateTime deletedDate = null;
  /* The description of how the build was deleted. */
  String deletedReason = null;
  /* A list of demands that represents the agent capabilities required by this build. */
  List<Demand> demands = [];
  /* The time that the build was completed. */
  DateTime finishTime = null;
  /* The ID of the build. */
  int id = null;
  /* Indicates whether the build should be skipped by retention policies. */
  bool keepForever = null;
  
  IdentityRef lastChangedBy = null;
  /* The date the build was last changed. */
  DateTime lastChangedDate = null;
  
  BuildLogReference logs = null;
  
  TaskOrchestrationPlanReference orchestrationPlan = null;
  /* The parameters for the build. */
  String parameters = null;
  /* Orchestration plans associated with the build (build, cleanup) */
  List<TaskOrchestrationPlanReference> plans = [];
  /* The build's priority. */
  String priority = null;
  //enum priorityEnum {  low,  belowNormal,  normal,  aboveNormal,  high,  };{
  
  TeamProjectReference project = null;
  
  PropertiesCollection properties = null;
  /* The quality of the xaml build (good, bad, etc.) */
  String quality = null;
  
  AgentPoolQueue queue = null;
  /* Additional options for queueing the build. */
  String queueOptions = null;
  //enum queueOptionsEnum {  none,  doNotRun,  };{
  /* The current position of the build in the queue. */
  int queuePosition = null;
  /* The time that the build was queued. */
  DateTime queueTime = null;
  /* The reason that the build was created. */
  String reason = null;
  //enum reasonEnum {  none,  manual,  individualCI,  batchedCI,  schedule,  scheduleForced,  userCreated,  validateShelveset,  checkInShelveset,  pullRequest,  buildCompletion,  triggered,  all,  };{
  
  BuildRepository repository = null;
  
  IdentityRef requestedBy = null;
  
  IdentityRef requestedFor = null;
  /* The build result. */
  String result = null;
  //enum resultEnum {  none,  succeeded,  partiallySucceeded,  failed,  canceled,  };{
  /* Indicates whether the build is retained by a release. */
  bool retainedByRelease = null;
  /* The source branch. */
  String sourceBranch = null;
  /* The source version. */
  String sourceVersion = null;
  /* The time that the build was started. */
  DateTime startTime = null;
  /* The status of the build. */
  String status = null;
  //enum statusEnum {  none,  inProgress,  completed,  cancelling,  postponed,  notStarted,  all,  };{
  
  List<String> tags = [];
  
  Build triggeredByBuild = null;
  /* Sourceprovider-specific information about what triggered the build */
  Map<String, String> triggerInfo = {};
  /* The URI of the build. */
  String uri = null;
  /* The REST URL of the build. */
  String url = null;
  
  List<BuildRequestValidationResult> validationResults = [];
  Build();

  @override
  String toString() {
    return 'Build[links=$links, agentSpecification=$agentSpecification, buildNumber=$buildNumber, buildNumberRevision=$buildNumberRevision, controller=$controller, definition=$definition, deleted=$deleted, deletedBy=$deletedBy, deletedDate=$deletedDate, deletedReason=$deletedReason, demands=$demands, finishTime=$finishTime, id=$id, keepForever=$keepForever, lastChangedBy=$lastChangedBy, lastChangedDate=$lastChangedDate, logs=$logs, orchestrationPlan=$orchestrationPlan, parameters=$parameters, plans=$plans, priority=$priority, project=$project, properties=$properties, quality=$quality, queue=$queue, queueOptions=$queueOptions, queuePosition=$queuePosition, queueTime=$queueTime, reason=$reason, repository=$repository, requestedBy=$requestedBy, requestedFor=$requestedFor, result=$result, retainedByRelease=$retainedByRelease, sourceBranch=$sourceBranch, sourceVersion=$sourceVersion, startTime=$startTime, status=$status, tags=$tags, triggeredByBuild=$triggeredByBuild, triggerInfo=$triggerInfo, uri=$uri, url=$url, validationResults=$validationResults, ]';
  }

  Build.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['agentSpecification'] == null) {
      agentSpecification = null;
    } else {
      agentSpecification = AgentSpecification.fromJson(json['agentSpecification']);
    }
    if (json['buildNumber'] == null) {
      buildNumber = null;
    } else {
          buildNumber = json['buildNumber'];
    }
    if (json['buildNumberRevision'] == null) {
      buildNumberRevision = null;
    } else {
          buildNumberRevision = json['buildNumberRevision'];
    }
    if (json['controller'] == null) {
      controller = null;
    } else {
      controller = BuildController.fromJson(json['controller']);
    }
    if (json['definition'] == null) {
      definition = null;
    } else {
      definition = DefinitionReference.fromJson(json['definition']);
    }
    if (json['deleted'] == null) {
      deleted = null;
    } else {
          deleted = json['deleted'];
    }
    if (json['deletedBy'] == null) {
      deletedBy = null;
    } else {
      deletedBy = IdentityRef.fromJson(json['deletedBy']);
    }
    if (json['deletedDate'] == null) {
      deletedDate = null;
    } else {
      deletedDate = DateTime.parse(json['deletedDate']);
    }
    if (json['deletedReason'] == null) {
      deletedReason = null;
    } else {
          deletedReason = json['deletedReason'];
    }
    if (json['demands'] == null) {
      demands = null;
    } else {
      demands = Demand.listFromJson(json['demands']);
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
    if (json['keepForever'] == null) {
      keepForever = null;
    } else {
          keepForever = json['keepForever'];
    }
    if (json['lastChangedBy'] == null) {
      lastChangedBy = null;
    } else {
      lastChangedBy = IdentityRef.fromJson(json['lastChangedBy']);
    }
    if (json['lastChangedDate'] == null) {
      lastChangedDate = null;
    } else {
      lastChangedDate = DateTime.parse(json['lastChangedDate']);
    }
    if (json['logs'] == null) {
      logs = null;
    } else {
      logs = BuildLogReference.fromJson(json['logs']);
    }
    if (json['orchestrationPlan'] == null) {
      orchestrationPlan = null;
    } else {
      orchestrationPlan = TaskOrchestrationPlanReference.fromJson(json['orchestrationPlan']);
    }
    if (json['parameters'] == null) {
      parameters = null;
    } else {
          parameters = json['parameters'];
    }
    if (json['plans'] == null) {
      plans = null;
    } else {
      plans = TaskOrchestrationPlanReference.listFromJson(json['plans']);
    }
    if (json['priority'] == null) {
      priority = null;
    } else {
          priority = json['priority'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = TeamProjectReference.fromJson(json['project']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = PropertiesCollection.fromJson(json['properties']);
    }
    if (json['quality'] == null) {
      quality = null;
    } else {
          quality = json['quality'];
    }
    if (json['queue'] == null) {
      queue = null;
    } else {
      queue = AgentPoolQueue.fromJson(json['queue']);
    }
    if (json['queueOptions'] == null) {
      queueOptions = null;
    } else {
          queueOptions = json['queueOptions'];
    }
    if (json['queuePosition'] == null) {
      queuePosition = null;
    } else {
          queuePosition = json['queuePosition'];
    }
    if (json['queueTime'] == null) {
      queueTime = null;
    } else {
      queueTime = DateTime.parse(json['queueTime']);
    }
    if (json['reason'] == null) {
      reason = null;
    } else {
          reason = json['reason'];
    }
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = BuildRepository.fromJson(json['repository']);
    }
    if (json['requestedBy'] == null) {
      requestedBy = null;
    } else {
      requestedBy = IdentityRef.fromJson(json['requestedBy']);
    }
    if (json['requestedFor'] == null) {
      requestedFor = null;
    } else {
      requestedFor = IdentityRef.fromJson(json['requestedFor']);
    }
    if (json['result'] == null) {
      result = null;
    } else {
          result = json['result'];
    }
    if (json['retainedByRelease'] == null) {
      retainedByRelease = null;
    } else {
          retainedByRelease = json['retainedByRelease'];
    }
    if (json['sourceBranch'] == null) {
      sourceBranch = null;
    } else {
          sourceBranch = json['sourceBranch'];
    }
    if (json['sourceVersion'] == null) {
      sourceVersion = null;
    } else {
          sourceVersion = json['sourceVersion'];
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
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
    if (json['triggeredByBuild'] == null) {
      triggeredByBuild = null;
    } else {
      triggeredByBuild = Build.fromJson(json['triggeredByBuild']);
    }
    if (json['triggerInfo'] == null) {
      triggerInfo = null;
    } else {
          triggerInfo = (json['triggerInfo'] as Map).cast<String, String>();
    }
    if (json['uri'] == null) {
      uri = null;
    } else {
          uri = json['uri'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
    if (json['validationResults'] == null) {
      validationResults = null;
    } else {
      validationResults = BuildRequestValidationResult.listFromJson(json['validationResults']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (agentSpecification != null)
      json['agentSpecification'] = agentSpecification;
    if (buildNumber != null)
      json['buildNumber'] = buildNumber;
    if (buildNumberRevision != null)
      json['buildNumberRevision'] = buildNumberRevision;
    if (controller != null)
      json['controller'] = controller;
    if (definition != null)
      json['definition'] = definition;
    if (deleted != null)
      json['deleted'] = deleted;
    if (deletedBy != null)
      json['deletedBy'] = deletedBy;
    if (deletedDate != null)
      json['deletedDate'] = deletedDate == null ? null : deletedDate.toUtc().toIso8601String();
    if (deletedReason != null)
      json['deletedReason'] = deletedReason;
    if (demands != null)
      json['demands'] = demands;
    if (finishTime != null)
      json['finishTime'] = finishTime == null ? null : finishTime.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (keepForever != null)
      json['keepForever'] = keepForever;
    if (lastChangedBy != null)
      json['lastChangedBy'] = lastChangedBy;
    if (lastChangedDate != null)
      json['lastChangedDate'] = lastChangedDate == null ? null : lastChangedDate.toUtc().toIso8601String();
    if (logs != null)
      json['logs'] = logs;
    if (orchestrationPlan != null)
      json['orchestrationPlan'] = orchestrationPlan;
    if (parameters != null)
      json['parameters'] = parameters;
    if (plans != null)
      json['plans'] = plans;
    if (priority != null)
      json['priority'] = priority;
    if (project != null)
      json['project'] = project;
    if (properties != null)
      json['properties'] = properties;
    if (quality != null)
      json['quality'] = quality;
    if (queue != null)
      json['queue'] = queue;
    if (queueOptions != null)
      json['queueOptions'] = queueOptions;
    if (queuePosition != null)
      json['queuePosition'] = queuePosition;
    if (queueTime != null)
      json['queueTime'] = queueTime == null ? null : queueTime.toUtc().toIso8601String();
    if (reason != null)
      json['reason'] = reason;
    if (repository != null)
      json['repository'] = repository;
    if (requestedBy != null)
      json['requestedBy'] = requestedBy;
    if (requestedFor != null)
      json['requestedFor'] = requestedFor;
    if (result != null)
      json['result'] = result;
    if (retainedByRelease != null)
      json['retainedByRelease'] = retainedByRelease;
    if (sourceBranch != null)
      json['sourceBranch'] = sourceBranch;
    if (sourceVersion != null)
      json['sourceVersion'] = sourceVersion;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (tags != null)
      json['tags'] = tags;
    if (triggeredByBuild != null)
      json['triggeredByBuild'] = triggeredByBuild;
    if (triggerInfo != null)
      json['triggerInfo'] = triggerInfo;
    if (uri != null)
      json['uri'] = uri;
    if (url != null)
      json['url'] = url;
    if (validationResults != null)
      json['validationResults'] = validationResults;
    return json;
  }

  static List<Build> listFromJson(List<dynamic> json) {
    return json == null ? List<Build>() : json.map((value) => Build.fromJson(value)).toList();
  }

  static Map<String, Build> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Build>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Build.fromJson(value));
    }
    return map;
  }
}

