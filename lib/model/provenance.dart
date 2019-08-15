part of azure_devops_sdk.api;

class Provenance {
  /* Other provenance data. */
  Map<String, String> data = {};
  /* Type of provenance source, for example \"InternalBuild\", \"InternalRelease\" */
  String provenanceSource = null;
  /* Identity of user that published the package */
  String publisherUserIdentity = null;
  /* HTTP User-Agent used when pushing the package. */
  String userAgent = null;
  Provenance();

  @override
  String toString() {
    return 'Provenance[data=$data, provenanceSource=$provenanceSource, publisherUserIdentity=$publisherUserIdentity, userAgent=$userAgent, ]';
  }

  Provenance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['data'] == null) {
      data = null;
    } else {
          data = (json['data'] as Map).cast<String, String>();
    }
    if (json['provenanceSource'] == null) {
      provenanceSource = null;
    } else {
          provenanceSource = json['provenanceSource'];
    }
    if (json['publisherUserIdentity'] == null) {
      publisherUserIdentity = null;
    } else {
          publisherUserIdentity = json['publisherUserIdentity'];
    }
    if (json['userAgent'] == null) {
      userAgent = null;
    } else {
          userAgent = json['userAgent'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (provenanceSource != null)
      json['provenanceSource'] = provenanceSource;
    if (publisherUserIdentity != null)
      json['publisherUserIdentity'] = publisherUserIdentity;
    if (userAgent != null)
      json['userAgent'] = userAgent;
    return json;
  }

  static List<Provenance> listFromJson(List<dynamic> json) {
    return json == null ? List<Provenance>() : json.map((value) => Provenance.fromJson(value)).toList();
  }

  static Map<String, Provenance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Provenance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Provenance.fromJson(value));
    }
    return map;
  }
}

