part of azure_devops_sdk.api;

class TeamIterationAttributes {
  /* Finish date of the iteration. Date-only, correct unadjusted at midnight in UTC. */
  DateTime finishDate = null;
  /* Start date of the iteration. Date-only, correct unadjusted at midnight in UTC. */
  DateTime startDate = null;
  /* Time frame of the iteration, such as past, current or future. */
  String timeFrame = null;
  //enum timeFrameEnum {  past,  current,  future,  };{
  TeamIterationAttributes();

  @override
  String toString() {
    return 'TeamIterationAttributes[finishDate=$finishDate, startDate=$startDate, timeFrame=$timeFrame, ]';
  }

  TeamIterationAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['finishDate'] == null) {
      finishDate = null;
    } else {
      finishDate = DateTime.parse(json['finishDate']);
    }
    if (json['startDate'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['startDate']);
    }
    if (json['timeFrame'] == null) {
      timeFrame = null;
    } else {
          timeFrame = json['timeFrame'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (finishDate != null)
      json['finishDate'] = finishDate == null ? null : finishDate.toUtc().toIso8601String();
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (timeFrame != null)
      json['timeFrame'] = timeFrame;
    return json;
  }

  static List<TeamIterationAttributes> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamIterationAttributes>() : json.map((value) => TeamIterationAttributes.fromJson(value)).toList();
  }

  static Map<String, TeamIterationAttributes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamIterationAttributes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamIterationAttributes.fromJson(value));
    }
    return map;
  }
}

