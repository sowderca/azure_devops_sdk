part of azure_devops_sdk.api;

class WidgetsVersionedList {
  
  List<String> eTag = [];
  
  List<Widget> widgets = [];
  WidgetsVersionedList();

  @override
  String toString() {
    return 'WidgetsVersionedList[eTag=$eTag, widgets=$widgets, ]';
  }

  WidgetsVersionedList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['eTag'] == null) {
      eTag = null;
    } else {
      eTag = (json['eTag'] as List).cast<String>();
    }
    if (json['widgets'] == null) {
      widgets = null;
    } else {
      widgets = Widget.listFromJson(json['widgets']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (eTag != null)
      json['eTag'] = eTag;
    if (widgets != null)
      json['widgets'] = widgets;
    return json;
  }

  static List<WidgetsVersionedList> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetsVersionedList>() : json.map((value) => WidgetsVersionedList.fromJson(value)).toList();
  }

  static Map<String, WidgetsVersionedList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetsVersionedList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetsVersionedList.fromJson(value));
    }
    return map;
  }
}

