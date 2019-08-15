part of azure_devops_sdk.api;

class TokenAdminRevocationRule {
  /* A datetime cutoff. Tokens created before this time will be rejected. This is an optional parameter. If omitted, defaults to the time at which the rule was created. */
  DateTime createdBefore = null;
  /* A string containing a space-delimited list of OAuth scopes. A token matching any one of the scopes will be rejected. For a list of all OAuth scopes supported by Azure DevOps, see: https://docs.microsoft.com/en-us/azure/devops/integrate/get-started/authentication/oauth?view=azure-devops#scopes This is a mandatory parameter. */
  String scopes = null;
  TokenAdminRevocationRule();

  @override
  String toString() {
    return 'TokenAdminRevocationRule[createdBefore=$createdBefore, scopes=$scopes, ]';
  }

  TokenAdminRevocationRule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createdBefore'] == null) {
      createdBefore = null;
    } else {
      createdBefore = DateTime.parse(json['createdBefore']);
    }
    if (json['scopes'] == null) {
      scopes = null;
    } else {
          scopes = json['scopes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdBefore != null)
      json['createdBefore'] = createdBefore == null ? null : createdBefore.toUtc().toIso8601String();
    if (scopes != null)
      json['scopes'] = scopes;
    return json;
  }

  static List<TokenAdminRevocationRule> listFromJson(List<dynamic> json) {
    return json == null ? List<TokenAdminRevocationRule>() : json.map((value) => TokenAdminRevocationRule.fromJson(value)).toList();
  }

  static Map<String, TokenAdminRevocationRule> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TokenAdminRevocationRule>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TokenAdminRevocationRule.fromJson(value));
    }
    return map;
  }
}

