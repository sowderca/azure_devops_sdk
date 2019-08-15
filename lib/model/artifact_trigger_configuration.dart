part of azure_devops_sdk.api;

class ArtifactTriggerConfiguration {
  /* Gets or sets the whether trigger is supported or not. */
  bool isTriggerSupported = null;
  /* Gets or sets the whether trigger is supported only on hosted environment. */
  bool isTriggerSupportedOnlyInHosted = null;
  /* Gets or sets the whether webhook is supported at server level. */
  bool isWebhookSupportedAtServerLevel = null;
  /* Gets or sets the payload hash header name for the artifact trigger configuration. */
  String payloadHashHeaderName = null;
  /* Gets or sets the resources for artifact trigger configuration. */
  Map<String, String> resources = {};
  /* Gets or sets the webhook payload mapping for artifact trigger configuration. */
  Map<String, String> webhookPayloadMapping = {};
  ArtifactTriggerConfiguration();

  @override
  String toString() {
    return 'ArtifactTriggerConfiguration[isTriggerSupported=$isTriggerSupported, isTriggerSupportedOnlyInHosted=$isTriggerSupportedOnlyInHosted, isWebhookSupportedAtServerLevel=$isWebhookSupportedAtServerLevel, payloadHashHeaderName=$payloadHashHeaderName, resources=$resources, webhookPayloadMapping=$webhookPayloadMapping, ]';
  }

  ArtifactTriggerConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isTriggerSupported'] == null) {
      isTriggerSupported = null;
    } else {
          isTriggerSupported = json['isTriggerSupported'];
    }
    if (json['isTriggerSupportedOnlyInHosted'] == null) {
      isTriggerSupportedOnlyInHosted = null;
    } else {
          isTriggerSupportedOnlyInHosted = json['isTriggerSupportedOnlyInHosted'];
    }
    if (json['isWebhookSupportedAtServerLevel'] == null) {
      isWebhookSupportedAtServerLevel = null;
    } else {
          isWebhookSupportedAtServerLevel = json['isWebhookSupportedAtServerLevel'];
    }
    if (json['payloadHashHeaderName'] == null) {
      payloadHashHeaderName = null;
    } else {
          payloadHashHeaderName = json['payloadHashHeaderName'];
    }
    if (json['resources'] == null) {
      resources = null;
    } else {
          resources = (json['resources'] as Map).cast<String, String>();
    }
    if (json['webhookPayloadMapping'] == null) {
      webhookPayloadMapping = null;
    } else {
          webhookPayloadMapping = (json['webhookPayloadMapping'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isTriggerSupported != null)
      json['isTriggerSupported'] = isTriggerSupported;
    if (isTriggerSupportedOnlyInHosted != null)
      json['isTriggerSupportedOnlyInHosted'] = isTriggerSupportedOnlyInHosted;
    if (isWebhookSupportedAtServerLevel != null)
      json['isWebhookSupportedAtServerLevel'] = isWebhookSupportedAtServerLevel;
    if (payloadHashHeaderName != null)
      json['payloadHashHeaderName'] = payloadHashHeaderName;
    if (resources != null)
      json['resources'] = resources;
    if (webhookPayloadMapping != null)
      json['webhookPayloadMapping'] = webhookPayloadMapping;
    return json;
  }

  static List<ArtifactTriggerConfiguration> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactTriggerConfiguration>() : json.map((value) => ArtifactTriggerConfiguration.fromJson(value)).toList();
  }

  static Map<String, ArtifactTriggerConfiguration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactTriggerConfiguration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactTriggerConfiguration.fromJson(value));
    }
    return map;
  }
}

