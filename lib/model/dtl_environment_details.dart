part of azure_devops_sdk.api;

class DtlEnvironmentDetails {
  
  String csmContent = null;
  
  String csmParameters = null;
  
  String subscriptionName = null;
  DtlEnvironmentDetails();

  @override
  String toString() {
    return 'DtlEnvironmentDetails[csmContent=$csmContent, csmParameters=$csmParameters, subscriptionName=$subscriptionName, ]';
  }

  DtlEnvironmentDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['csmContent'] == null) {
      csmContent = null;
    } else {
          csmContent = json['csmContent'];
    }
    if (json['csmParameters'] == null) {
      csmParameters = null;
    } else {
          csmParameters = json['csmParameters'];
    }
    if (json['subscriptionName'] == null) {
      subscriptionName = null;
    } else {
          subscriptionName = json['subscriptionName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (csmContent != null)
      json['csmContent'] = csmContent;
    if (csmParameters != null)
      json['csmParameters'] = csmParameters;
    if (subscriptionName != null)
      json['subscriptionName'] = subscriptionName;
    return json;
  }

  static List<DtlEnvironmentDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<DtlEnvironmentDetails>() : json.map((value) => DtlEnvironmentDetails.fromJson(value)).toList();
  }

  static Map<String, DtlEnvironmentDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DtlEnvironmentDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DtlEnvironmentDetails.fromJson(value));
    }
    return map;
  }
}

