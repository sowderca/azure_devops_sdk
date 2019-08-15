part of azure_devops_sdk.api;

class TaskAgentPublicKey {
  /* Gets or sets the exponent for the public key. */
  List<String> exponent = [];
  /* Gets or sets the modulus for the public key. */
  List<String> modulus = [];
  TaskAgentPublicKey();

  @override
  String toString() {
    return 'TaskAgentPublicKey[exponent=$exponent, modulus=$modulus, ]';
  }

  TaskAgentPublicKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['exponent'] == null) {
      exponent = null;
    } else {
      exponent = (json['exponent'] as List).cast<String>();
    }
    if (json['modulus'] == null) {
      modulus = null;
    } else {
      modulus = (json['modulus'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exponent != null)
      json['exponent'] = exponent;
    if (modulus != null)
      json['modulus'] = modulus;
    return json;
  }

  static List<TaskAgentPublicKey> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentPublicKey>() : json.map((value) => TaskAgentPublicKey.fromJson(value)).toList();
  }

  static Map<String, TaskAgentPublicKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentPublicKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentPublicKey.fromJson(value));
    }
    return map;
  }
}

