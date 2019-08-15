part of azure_devops_sdk.api;

class TaskAgentPoolMaintenanceSchedule {
  /* Days for a build (flags enum for days of the week) */
  String daysToBuild = null;
  //enum daysToBuildEnum {  none,  monday,  tuesday,  wednesday,  thursday,  friday,  saturday,  sunday,  all,  };{
  /* The Job Id of the Scheduled job that will queue the pool maintenance job. */
  String scheduleJobId = null;
  /* Local timezone hour to start */
  int startHours = null;
  /* Local timezone minute to start */
  int startMinutes = null;
  /* Time zone of the build schedule (string representation of the time zone id) */
  String timeZoneId = null;
  TaskAgentPoolMaintenanceSchedule();

  @override
  String toString() {
    return 'TaskAgentPoolMaintenanceSchedule[daysToBuild=$daysToBuild, scheduleJobId=$scheduleJobId, startHours=$startHours, startMinutes=$startMinutes, timeZoneId=$timeZoneId, ]';
  }

  TaskAgentPoolMaintenanceSchedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (daysToBuild != null)
      json['daysToBuild'] = daysToBuild;
    if (scheduleJobId != null)
      json['scheduleJobId'] = scheduleJobId;
    if (startHours != null)
      json['startHours'] = startHours;
    if (startMinutes != null)
      json['startMinutes'] = startMinutes;
    if (timeZoneId != null)
      json['timeZoneId'] = timeZoneId;
    return json;
  }

  static List<TaskAgentPoolMaintenanceSchedule> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPoolMaintenanceSchedule>() : json.map((value) => TaskAgentPoolMaintenanceSchedule.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPoolMaintenanceSchedule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPoolMaintenanceSchedule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPoolMaintenanceSchedule.fromJson(value));
    }
    return map;
  }
}

