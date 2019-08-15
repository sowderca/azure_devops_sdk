part of azure_devops_sdk.api;

class PointUpdateModel {
  /* Outcome to update. */
  String outcome = null;
  /* Reset test point to active. */
  bool resetToActive = null;
  
  IdentityRef tester = null;
  PointUpdateModel();

  @override
  String toString() {
    return 'PointUpdateModel[outcome=$outcome, resetToActive=$resetToActive, tester=$tester, ]';
  }

  PointUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['outcome'] == null) {
      outcome = null;
    } else {
          outcome = json['outcome'];
    }
    if (json['resetToActive'] == null) {
      resetToActive = null;
    } else {
          resetToActive = json['resetToActive'];
    }
    if (json['tester'] == null) {
      tester = null;
    } else {
      tester = IdentityRef.fromJson(json['tester']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (outcome != null)
      json['outcome'] = outcome;
    if (resetToActive != null)
      json['resetToActive'] = resetToActive;
    if (tester != null)
      json['tester'] = tester;
    return json;
  }

  static List<PointUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<PointUpdateModel>() : json.map((value) => PointUpdateModel.fromJson(value)).toList();
  }

  static Map<String, PointUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PointUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PointUpdateModel.fromJson(value));
    }
    return map;
  }
}

