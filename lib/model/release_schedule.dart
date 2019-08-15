part of azure_devops_sdk.api;

class ReleaseSchedule {
  /* Days of the week to release. */
  String daysToRelease = null;
  //enum daysToReleaseEnum {  none,  monday,  tuesday,  wednesday,  thursday,  friday,  saturday,  sunday,  all,  };{
  /* Team Foundation Job Definition Job Id. */
  String jobId = null;
  /* Flag to determine if this schedule should only release if the associated artifact has been changed or release definition changed. */
  bool scheduleOnlyWithChanges = null;
  /* Local time zone hour to start. */
  int startHours = null;
  /* Local time zone minute to start. */
  int startMinutes = null;
  /* Time zone Id of release schedule, such as 'UTC'. */
  String timeZoneId = null;
  ReleaseSchedule();

  @override
  String toString() {
    return 'ReleaseSchedule[daysToRelease=$daysToRelease, jobId=$jobId, scheduleOnlyWithChanges=$scheduleOnlyWithChanges, startHours=$startHours, startMinutes=$startMinutes, timeZoneId=$timeZoneId, ]';
  }

  ReleaseSchedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['daysToRelease'] == null) {
      daysToRelease = null;
    } else {
          daysToRelease = json['daysToRelease'];
    }
    if (json['jobId'] == null) {
      jobId = null;
    } else {
          jobId = json['jobId'];
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
    if (daysToRelease != null)
      json['daysToRelease'] = daysToRelease;
    if (jobId != null)
      json['jobId'] = jobId;
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

  static List<ReleaseSchedule> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseSchedule>() : json.map((value) => ReleaseSchedule.fromJson(value)).toList();
  }

  static Map<String, ReleaseSchedule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseSchedule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseSchedule.fromJson(value));
    }
    return map;
  }
}

