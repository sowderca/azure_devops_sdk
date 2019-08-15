part of azure_devops_sdk.api;

class HideStateModel {
  /* Returns 'true', if workitem state is hidden, 'false' otherwise. */
  bool hidden = null;
  HideStateModel();

  @override
  String toString() {
    return 'HideStateModel[hidden=$hidden, ]';
  }

  HideStateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['hidden'] == null) {
      hidden = null;
    } else {
          hidden = json['hidden'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hidden != null)
      json['hidden'] = hidden;
    return json;
  }

  static List<HideStateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<HideStateModel>() : json.map((value) => HideStateModel.fromJson(value)).toList();
  }

  static Map<String, HideStateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HideStateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HideStateModel.fromJson(value));
    }
    return map;
  }
}

