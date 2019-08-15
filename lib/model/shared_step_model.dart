part of azure_devops_sdk.api;

class SharedStepModel {
  /* WorkItem shared step ID. */
  int id = null;
  /* Shared step workitem revision. */
  int revision = null;
  SharedStepModel();

  @override
  String toString() {
    return 'SharedStepModel[id=$id, revision=$revision, ]';
  }

  SharedStepModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<SharedStepModel> listFromJson(List<dynamic> json) {
    return json == null ? List<SharedStepModel>() : json.map((value) => SharedStepModel.fromJson(value)).toList();
  }

  static Map<String, SharedStepModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SharedStepModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SharedStepModel.fromJson(value));
    }
    return map;
  }
}

