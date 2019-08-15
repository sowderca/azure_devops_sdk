part of azure_devops_sdk.api;

class ExternalConfigurationDescriptor {
  /* Url of the site to create this type of subscription. */
  String createSubscriptionUrl = null;
  /* The name of an input property that contains the URL to edit a subscription. */
  String editSubscriptionPropertyName = null;
  /* True if the external configuration applies only to hosted. */
  bool hostedOnly = null;
  ExternalConfigurationDescriptor();

  @override
  String toString() {
    return 'ExternalConfigurationDescriptor[createSubscriptionUrl=$createSubscriptionUrl, editSubscriptionPropertyName=$editSubscriptionPropertyName, hostedOnly=$hostedOnly, ]';
  }

  ExternalConfigurationDescriptor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['createSubscriptionUrl'] == null) {
      createSubscriptionUrl = null;
    } else {
          createSubscriptionUrl = json['createSubscriptionUrl'];
    }
    if (json['editSubscriptionPropertyName'] == null) {
      editSubscriptionPropertyName = null;
    } else {
          editSubscriptionPropertyName = json['editSubscriptionPropertyName'];
    }
    if (json['hostedOnly'] == null) {
      hostedOnly = null;
    } else {
          hostedOnly = json['hostedOnly'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createSubscriptionUrl != null)
      json['createSubscriptionUrl'] = createSubscriptionUrl;
    if (editSubscriptionPropertyName != null)
      json['editSubscriptionPropertyName'] = editSubscriptionPropertyName;
    if (hostedOnly != null)
      json['hostedOnly'] = hostedOnly;
    return json;
  }

  static List<ExternalConfigurationDescriptor> listFromJson(List<dynamic> json) {
    return json == null ? List<ExternalConfigurationDescriptor>() : json.map((value) => ExternalConfigurationDescriptor.fromJson(value)).toList();
  }

  static Map<String, ExternalConfigurationDescriptor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExternalConfigurationDescriptor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExternalConfigurationDescriptor.fromJson(value));
    }
    return map;
  }
}

