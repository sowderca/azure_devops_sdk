part of azure_devops_sdk.api;

class PhaseReference {
  /* Attempt number of the phase */
  int attempt = null;
  /* Name of the phase. Maximum supported length for name is 256 character. */
  String phaseName = null;
  PhaseReference();

  @override
  String toString() {
    return 'PhaseReference[attempt=$attempt, phaseName=$phaseName, ]';
  }

  PhaseReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['phaseName'] == null) {
      phaseName = null;
    } else {
          phaseName = json['phaseName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (phaseName != null)
      json['phaseName'] = phaseName;
    return json;
  }

  static List<PhaseReference> listFromJson(List<dynamic> json) {
    return json == null ? List<PhaseReference>() : json.map((value) => PhaseReference.fromJson(value)).toList();
  }

  static Map<String, PhaseReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PhaseReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PhaseReference.fromJson(value));
    }
    return map;
  }
}

