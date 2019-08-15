part of azure_devops_sdk.api;

class ExpressionFilterGroup {
  /* The index of the last FilterClause in this group */
  int end = null;
  /* Level of the group, since groups can be nested for each nested group the level will increase by 1 */
  int level = null;
  /* The index of the first FilterClause in this group */
  int start = null;
  ExpressionFilterGroup();

  @override
  String toString() {
    return 'ExpressionFilterGroup[end=$end, level=$level, start=$start, ]';
  }

  ExpressionFilterGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['end'] == null) {
      end = null;
    } else {
          end = json['end'];
    }
    if (json['level'] == null) {
      level = null;
    } else {
          level = json['level'];
    }
    if (json['start'] == null) {
      start = null;
    } else {
          start = json['start'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (end != null)
      json['end'] = end;
    if (level != null)
      json['level'] = level;
    if (start != null)
      json['start'] = start;
    return json;
  }

  static List<ExpressionFilterGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpressionFilterGroup>() : json.map((value) => ExpressionFilterGroup.fromJson(value)).toList();
  }

  static Map<String, ExpressionFilterGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpressionFilterGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpressionFilterGroup.fromJson(value));
    }
    return map;
  }
}

