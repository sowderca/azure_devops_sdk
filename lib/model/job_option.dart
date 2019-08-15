part of azure_devops_sdk.api;

class JobOption {
  
  Map<String, String> data = {};
  /* Gets the id of the option. */
  String id = null;
  JobOption();

  @override
  String toString() {
    return 'JobOption[data=$data, id=$id, ]';
  }

  JobOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<JobOption> listFromJson(List<dynamic> json) {
    return json == null ? List<JobOption>() : json.map((value) => JobOption.fromJson(value)).toList();
  }

  static Map<String, JobOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, JobOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = JobOption.fromJson(value));
    }
    return map;
  }
}

