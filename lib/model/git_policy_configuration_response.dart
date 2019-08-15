part of azure_devops_sdk.api;

class GitPolicyConfigurationResponse {
  /* The HTTP client methods find the continuation token header in the response and populate this field. */
  String continuationToken = null;
  
  List<PolicyConfiguration> policyConfigurations = [];
  GitPolicyConfigurationResponse();

  @override
  String toString() {
    return 'GitPolicyConfigurationResponse[continuationToken=$continuationToken, policyConfigurations=$policyConfigurations, ]';
  }

  GitPolicyConfigurationResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['continuationToken'] == null) {
      continuationToken = null;
    } else {
          continuationToken = json['continuationToken'];
    }
    if (json['policyConfigurations'] == null) {
      policyConfigurations = null;
    } else {
      policyConfigurations = PolicyConfiguration.listFromJson(json['policyConfigurations']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (continuationToken != null)
      json['continuationToken'] = continuationToken;
    if (policyConfigurations != null)
      json['policyConfigurations'] = policyConfigurations;
    return json;
  }

  static List<GitPolicyConfigurationResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<GitPolicyConfigurationResponse>() : json.map((value) => GitPolicyConfigurationResponse.fromJson(value)).toList();
  }

  static Map<String, GitPolicyConfigurationResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitPolicyConfigurationResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitPolicyConfigurationResponse.fromJson(value));
    }
    return map;
  }
}

