part of azure_devops_sdk.api;

class ReleaseDefinitionGatesStep {
  /* Gets or sets the gates. */
  List<ReleaseDefinitionGate> gates = [];
  
  ReleaseDefinitionGatesOptions gatesOptions = null;
  /* ID of the ReleaseDefinitionGateStep. */
  int id = null;
  ReleaseDefinitionGatesStep();

  @override
  String toString() {
    return 'ReleaseDefinitionGatesStep[gates=$gates, gatesOptions=$gatesOptions, id=$id, ]';
  }

  ReleaseDefinitionGatesStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['gates'] == null) {
      gates = null;
    } else {
      gates = ReleaseDefinitionGate.listFromJson(json['gates']);
    }
    if (json['gatesOptions'] == null) {
      gatesOptions = null;
    } else {
      gatesOptions = ReleaseDefinitionGatesOptions.fromJson(json['gatesOptions']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (gates != null)
      json['gates'] = gates;
    if (gatesOptions != null)
      json['gatesOptions'] = gatesOptions;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ReleaseDefinitionGatesStep> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseDefinitionGatesStep>() : json.map((value) => ReleaseDefinitionGatesStep.fromJson(value)).toList();
  }

  static Map<String, ReleaseDefinitionGatesStep> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseDefinitionGatesStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseDefinitionGatesStep.fromJson(value));
    }
    return map;
  }
}

