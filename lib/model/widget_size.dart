part of azure_devops_sdk.api;

class WidgetSize {
  /* The Width of the widget, expressed in dashboard grid columns. */
  int columnSpan = null;
  /* The height of the widget, expressed in dashboard grid rows. */
  int rowSpan = null;
  WidgetSize();

  @override
  String toString() {
    return 'WidgetSize[columnSpan=$columnSpan, rowSpan=$rowSpan, ]';
  }

  WidgetSize.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['columnSpan'] == null) {
      columnSpan = null;
    } else {
          columnSpan = json['columnSpan'];
    }
    if (json['rowSpan'] == null) {
      rowSpan = null;
    } else {
          rowSpan = json['rowSpan'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (columnSpan != null)
      json['columnSpan'] = columnSpan;
    if (rowSpan != null)
      json['rowSpan'] = rowSpan;
    return json;
  }

  static List<WidgetSize> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetSize>() : json.map((value) => WidgetSize.fromJson(value)).toList();
  }

  static Map<String, WidgetSize> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetSize>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetSize.fromJson(value));
    }
    return map;
  }
}

