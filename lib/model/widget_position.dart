part of azure_devops_sdk.api;

class WidgetPosition {
  
  int column = null;
  
  int row = null;
  WidgetPosition();

  @override
  String toString() {
    return 'WidgetPosition[column=$column, row=$row, ]';
  }

  WidgetPosition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['column'] == null) {
      column = null;
    } else {
          column = json['column'];
    }
    if (json['row'] == null) {
      row = null;
    } else {
          row = json['row'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (column != null)
      json['column'] = column;
    if (row != null)
      json['row'] = row;
    return json;
  }

  static List<WidgetPosition> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetPosition>() : json.map((value) => WidgetPosition.fromJson(value)).toList();
  }

  static Map<String, WidgetPosition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetPosition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetPosition.fromJson(value));
    }
    return map;
  }
}

