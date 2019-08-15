part of azure_devops_sdk.api;

class TimelineTeamIteration {
  /* The iteration CSS Node Id */
  String cssNodeId = null;
  /* The end date of the iteration */
  DateTime finishDate = null;
  /* The iteration name */
  String name = null;
  /* All the partially paged workitems in this iteration. */
  List<List<Object>> partiallyPagedWorkItems = [];
  /* The iteration path */
  String path = null;
  /* The start date of the iteration */
  DateTime startDate = null;
  
  TimelineIterationStatus status = null;
  /* The work items that have been paged in this iteration */
  List<List<Object>> workItems = [];
  TimelineTeamIteration();

  @override
  String toString() {
    return 'TimelineTeamIteration[cssNodeId=$cssNodeId, finishDate=$finishDate, name=$name, partiallyPagedWorkItems=$partiallyPagedWorkItems, path=$path, startDate=$startDate, status=$status, workItems=$workItems, ]';
  }

  TimelineTeamIteration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cssNodeId'] == null) {
      cssNodeId = null;
    } else {
          cssNodeId = json['cssNodeId'];
    }
    if (json['finishDate'] == null) {
      finishDate = null;
    } else {
      finishDate = DateTime.parse(json['finishDate']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['partiallyPagedWorkItems'] == null) {
      partiallyPagedWorkItems = null;
    } else {
      partiallyPagedWorkItems = List.listFromJson(json['partiallyPagedWorkItems']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
      status = TimelineIterationStatus.fromJson(json['status']);
    }
    if (json['workItems'] == null) {
      workItems = null;
    } else {
      workItems = List.listFromJson(json['workItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cssNodeId != null)
      json['cssNodeId'] = cssNodeId;
    if (finishDate != null)
      json['finishDate'] = finishDate == null ? null : finishDate.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (partiallyPagedWorkItems != null)
      json['partiallyPagedWorkItems'] = partiallyPagedWorkItems;
    if (path != null)
      json['path'] = path;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (workItems != null)
      json['workItems'] = workItems;
    return json;
  }

  static List<TimelineTeamIteration> listFromJson(List<dynamic> json) {
    return json == null ? List<TimelineTeamIteration>() : json.map((value) => TimelineTeamIteration.fromJson(value)).toList();
  }

  static Map<String, TimelineTeamIteration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimelineTeamIteration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimelineTeamIteration.fromJson(value));
    }
    return map;
  }
}

