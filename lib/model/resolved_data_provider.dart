part of azure_devops_sdk.api;

class ResolvedDataProvider {
  /* The total time the data provider took to resolve its data (in milliseconds) */
  String duration = null;
  
  String error = null;
  
  String id = null;
  ResolvedDataProvider();

  @override
  String toString() {
    return 'ResolvedDataProvider[duration=$duration, error=$error, id=$id, ]';
  }

  ResolvedDataProvider.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['duration'] == null) {
      duration = null;
    } else {
          duration = json['duration'];
    }
    if (json['error'] == null) {
      error = null;
    } else {
          error = json['error'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (duration != null)
      json['duration'] = duration;
    if (error != null)
      json['error'] = error;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ResolvedDataProvider> listFromJson(List<dynamic> json) {
    return json == null ? List<ResolvedDataProvider>() : json.map((value) => ResolvedDataProvider.fromJson(value)).toList();
  }

  static Map<String, ResolvedDataProvider> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResolvedDataProvider>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResolvedDataProvider.fromJson(value));
    }
    return map;
  }
}

