part of azure_devops_sdk.api;

class AzureKeyVaultVariableValue {
  /* Gets or sets as the variable is secret or not. */
  bool isSecret = null;
  /* Gets or sets the value. */
  String value = null;
  AzureKeyVaultVariableValue();

  @override
  String toString() {
    return 'AzureKeyVaultVariableValue[isSecret=$isSecret, value=$value, ]';
  }

  AzureKeyVaultVariableValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isSecret'] == null) {
      isSecret = null;
    } else {
          isSecret = json['isSecret'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isSecret != null)
      json['isSecret'] = isSecret;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<AzureKeyVaultVariableValue> listFromJson(List<dynamic> json) {
    return json == null ? List<AzureKeyVaultVariableValue>() : json.map((value) => AzureKeyVaultVariableValue.fromJson(value)).toList();
  }

  static Map<String, AzureKeyVaultVariableValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AzureKeyVaultVariableValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AzureKeyVaultVariableValue.fromJson(value));
    }
    return map;
  }
}

