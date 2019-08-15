part of azure_devops_sdk.api;

class Schedule {
  
  List<String> branchFilters = [];
  /* Days for a build (flags enum for days of the week) */
  String daysToBuild = null;
  //enum daysToBuildEnum {  none,  monday,  tuesday,  wednesday,  thursday,  friday,  saturday,  sunday,  all,  };{
  /* The Job Id of the Scheduled job that will queue the scheduled build. Since a single trigger can have multiple schedules and we want a single job to process a single schedule (since each schedule has a list of branches to build), the schedule itself needs to define the Job Id. This value will be filled in when a definition is added or updated.  The UI does not provide it or use it. */
  String scheduleJobId = null;
  /* Flag to determine if this schedule should only build if the associated source has been changed. */
  bool scheduleOnlyWithChanges = null;
  /* Local timezone hour to start */
  int startHours = null;
  /* Local timezone minute to start */
  int startMinutes = null;
  /* Time zone of the build schedule (String representation of the time zone ID) */
  String timeZoneId = null;
  Schedule();

  @override
  String toString() {
    return 'Schedule[branchFilters=$branchFilters, daysToBuild=$daysToBuild, scheduleJobId=$scheduleJobId, scheduleOnlyWithChanges=$scheduleOnlyWithChanges, startHours=$startHours, startMinutes=$startMinutes, timeZoneId=$timeZoneId, ]';
  }

  Schedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['branchFilters'] == null) {
      branchFilters = null;
    } else {
      branchFilters = (json['branchFilters'] as List).cast<String>();
    }
    if (json['daysToBuild'] == null) {
      daysToBuild = null;
    } else {
          daysToBuild = json['daysToBuild'];
    }
    if (json['scheduleJobId'] == null) {
      scheduleJobId = null;
    } else {
          scheduleJobId = json['scheduleJobId'];
    }
    if (json['scheduleOnlyWithChanges'] == null) {
      scheduleOnlyWithChanges = null;
    } else {
          scheduleOnlyWithChanges = json['scheduleOnlyWithChanges'];
    }
    if (json['startHours'] == null) {
      startHours = null;
    } else {
          startHours = json['startHours'];
    }
    if (json['startMinutes'] == null) {
      startMinutes = null;
    } else {
          startMinutes = json['startMinutes'];
    }
    if (json['timeZoneId'] == null) {
      timeZoneId = null;
    } else {
          timeZoneId = json['timeZoneId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (branchFilters != null)
      json['branchFilters'] = branchFilters;
    if (daysToBuild != null)
      json['daysToBuild'] = daysToBuild;
    if (scheduleJobId != null)
      json['scheduleJobId'] = scheduleJobId;
    if (scheduleOnlyWithChanges != null)
      json['scheduleOnlyWithChanges'] = scheduleOnlyWithChanges;
    if (startHours != null)
      json['startHours'] = startHours;
    if (startMinutes != null)
      json['startMinutes'] = startMinutes;
    if (timeZoneId != null)
      json['timeZoneId'] = timeZoneId;
    return json;
  }

  static List<Schedule> listFromJson(List<dynamic> json) {
    return json == null ? List<Schedule>() : json.map((value) => Schedule.fromJson(value)).toList();
  }

  static Map<String, Schedule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Schedule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Schedule.fromJson(value));
    }
    return map;
  }
}

