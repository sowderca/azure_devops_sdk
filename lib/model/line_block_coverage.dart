part of azure_devops_sdk.api;

class LineBlockCoverage {
  /* End of line block */
  int end = null;
  /* Start of line block */
  int start = null;
  /* Coverage status. Covered: 0, NotCovered: 1,  PartiallyCovered: 2 */
  int status = null;
  LineBlockCoverage();

  @override
  String toString() {
    return 'LineBlockCoverage[end=$end, start=$start, status=$status, ]';
  }

  LineBlockCoverage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['end'] == null) {
      end = null;
    } else {
          end = json['end'];
    }
    if (json['start'] == null) {
      start = null;
    } else {
          start = json['start'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (end != null)
      json['end'] = end;
    if (start != null)
      json['start'] = start;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<LineBlockCoverage> listFromJson(List<dynamic> json) {
    return json == null ? List<LineBlockCoverage>() : json.map((value) => LineBlockCoverage.fromJson(value)).toList();
  }

  static Map<String, LineBlockCoverage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LineBlockCoverage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LineBlockCoverage.fromJson(value));
    }
    return map;
  }
}

