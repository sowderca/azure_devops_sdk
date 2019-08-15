part of azure_devops_sdk.api;

class Marker {
  /* Color associated with the marker. */
  String color = null;
  /* Where the marker should be displayed on the timeline. */
  DateTime date = null;
  /* Label/title for the marker. */
  String label = null;
  Marker();

  @override
  String toString() {
    return 'Marker[color=$color, date=$date, label=$label, ]';
  }

  Marker.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['color'] == null) {
      color = null;
    } else {
          color = json['color'];
    }
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (label != null)
      json['label'] = label;
    return json;
  }

  static List<Marker> listFromJson(List<dynamic> json) {
    return json == null ? List<Marker>() : json.map((value) => Marker.fromJson(value)).toList();
  }

  static Map<String, Marker> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Marker>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Marker.fromJson(value));
    }
    return map;
  }
}

