part of azure_devops_sdk.api;

class ResultUpdateResponseModel {
  
  int revision = null;
  ResultUpdateResponseModel();

  @override
  String toString() {
    return 'ResultUpdateResponseModel[revision=$revision, ]';
  }

  ResultUpdateResponseModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<ResultUpdateResponseModel> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultUpdateResponseModel>() : json.map((value) => ResultUpdateResponseModel.fromJson(value)).toList();
  }

  static Map<String, ResultUpdateResponseModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultUpdateResponseModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultUpdateResponseModel.fromJson(value));
    }
    return map;
  }
}

