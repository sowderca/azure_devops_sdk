part of azure_devops_sdk.api;

class ClientCertificate {
  /* Gets or sets the value of client certificate. */
  String value = null;
  ClientCertificate();

  @override
  String toString() {
    return 'ClientCertificate[value=$value, ]';
  }

  ClientCertificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ClientCertificate> listFromJson(List<dynamic> json) {
    return json == null ? List<ClientCertificate>() : json.map((value) => ClientCertificate.fromJson(value)).toList();
  }

  static Map<String, ClientCertificate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ClientCertificate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ClientCertificate.fromJson(value));
    }
    return map;
  }
}

