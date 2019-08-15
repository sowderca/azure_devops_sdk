part of azure_devops_sdk.api;

class TaskAgentSessionKey {
  /* Gets or sets a value indicating whether or not the key value is encrypted. If this value is true, the Value property should be decrypted using the <c>RSA</c> key exchanged with the server during registration. */
  bool encrypted = null;
  /* Gets or sets the symmetric key value. */
  List<String> value = [];
  TaskAgentSessionKey();

  @override
  String toString() {
    return 'TaskAgentSessionKey[encrypted=$encrypted, value=$value, ]';
  }

  TaskAgentSessionKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['encrypted'] == null) {
      encrypted = null;
    } else {
          encrypted = json['encrypted'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = (json['value'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (encrypted != null)
      json['encrypted'] = encrypted;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TaskAgentSessionKey> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskAgentSessionKey>() : json.map((value) => TaskAgentSessionKey.fromJson(value)).toList();
  }

  static Map<String, TaskAgentSessionKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskAgentSessionKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskAgentSessionKey.fromJson(value));
    }
    return map;
  }
}

