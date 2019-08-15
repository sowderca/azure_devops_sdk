part of azure_devops_sdk.api;

class PublicKey {
  /* Gets or sets the exponent for the public key. */
  List<String> exponent = [];
  /* Gets or sets the modulus for the public key. */
  List<String> modulus = [];
  PublicKey();

  @override
  String toString() {
    return 'PublicKey[exponent=$exponent, modulus=$modulus, ]';
  }

  PublicKey.fromJson(Map<String, dynamic> json) {
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

  static List<PublicKey> listFromJson(List<dynamic> json) {
    return json == null ? List<PublicKey>() : json.map((value) => PublicKey.fromJson(value)).toList();
  }

  static Map<String, PublicKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublicKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublicKey.fromJson(value));
    }
    return map;
  }
}

