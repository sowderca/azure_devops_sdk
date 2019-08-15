part of azure_devops_sdk.api;

class WidgetResponse {
  
  ReferenceLinks links = null;
  /* Refers to the allowed sizes for the widget. This gets populated when user wants to configure the widget */
  List<WidgetSize> allowedSizes = [];
  /* Read-Only Property from Dashboard Service. Indicates if settings are blocked for the current user. */
  bool areSettingsBlockedForUser = null;
  /* Refers to unique identifier of a feature artifact. Used for pinning+unpinning a specific artifact. */
  String artifactId = null;
  
  String configurationContributionId = null;
  
  String configurationContributionRelativeId = null;
  
  String contentUri = null;
  /* The id of the underlying contribution defining the supplied Widget Configuration. */
  String contributionId = null;
  
  Dashboard dashboard = null;
  
  String eTag = null;
  
  String id = null;
  
  bool isEnabled = null;
  
  bool isNameConfigurable = null;
  
  LightboxOptions lightboxOptions = null;
  
  String loadingImageUrl = null;
  
  String name = null;
  
  WidgetPosition position = null;
  
  String settings = null;
  
  SemanticVersion settingsVersion = null;
  
  WidgetSize size = null;
  
  String typeId = null;
  
  String url = null;
  WidgetResponse();

  @override
  String toString() {
    return 'WidgetResponse[links=$links, allowedSizes=$allowedSizes, areSettingsBlockedForUser=$areSettingsBlockedForUser, artifactId=$artifactId, configurationContributionId=$configurationContributionId, configurationContributionRelativeId=$configurationContributionRelativeId, contentUri=$contentUri, contributionId=$contributionId, dashboard=$dashboard, eTag=$eTag, id=$id, isEnabled=$isEnabled, isNameConfigurable=$isNameConfigurable, lightboxOptions=$lightboxOptions, loadingImageUrl=$loadingImageUrl, name=$name, position=$position, settings=$settings, settingsVersion=$settingsVersion, size=$size, typeId=$typeId, url=$url, ]';
  }

  WidgetResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['allowedSizes'] == null) {
      allowedSizes = null;
    } else {
      allowedSizes = WidgetSize.listFromJson(json['allowedSizes']);
    }
    if (json['areSettingsBlockedForUser'] == null) {
      areSettingsBlockedForUser = null;
    } else {
          areSettingsBlockedForUser = json['areSettingsBlockedForUser'];
    }
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['configurationContributionId'] == null) {
      configurationContributionId = null;
    } else {
          configurationContributionId = json['configurationContributionId'];
    }
    if (json['configurationContributionRelativeId'] == null) {
      configurationContributionRelativeId = null;
    } else {
          configurationContributionRelativeId = json['configurationContributionRelativeId'];
    }
    if (json['contentUri'] == null) {
      contentUri = null;
    } else {
          contentUri = json['contentUri'];
    }
    if (json['contributionId'] == null) {
      contributionId = null;
    } else {
          contributionId = json['contributionId'];
    }
    if (json['dashboard'] == null) {
      dashboard = null;
    } else {
      dashboard = Dashboard.fromJson(json['dashboard']);
    }
    if (json['eTag'] == null) {
      eTag = null;
    } else {
          eTag = json['eTag'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['isNameConfigurable'] == null) {
      isNameConfigurable = null;
    } else {
          isNameConfigurable = json['isNameConfigurable'];
    }
    if (json['lightboxOptions'] == null) {
      lightboxOptions = null;
    } else {
      lightboxOptions = LightboxOptions.fromJson(json['lightboxOptions']);
    }
    if (json['loadingImageUrl'] == null) {
      loadingImageUrl = null;
    } else {
          loadingImageUrl = json['loadingImageUrl'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['position'] == null) {
      position = null;
    } else {
      position = WidgetPosition.fromJson(json['position']);
    }
    if (json['settings'] == null) {
      settings = null;
    } else {
          settings = json['settings'];
    }
    if (json['settingsVersion'] == null) {
      settingsVersion = null;
    } else {
      settingsVersion = SemanticVersion.fromJson(json['settingsVersion']);
    }
    if (json['size'] == null) {
      size = null;
    } else {
      size = WidgetSize.fromJson(json['size']);
    }
    if (json['typeId'] == null) {
      typeId = null;
    } else {
          typeId = json['typeId'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (allowedSizes != null)
      json['allowedSizes'] = allowedSizes;
    if (areSettingsBlockedForUser != null)
      json['areSettingsBlockedForUser'] = areSettingsBlockedForUser;
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (configurationContributionId != null)
      json['configurationContributionId'] = configurationContributionId;
    if (configurationContributionRelativeId != null)
      json['configurationContributionRelativeId'] = configurationContributionRelativeId;
    if (contentUri != null)
      json['contentUri'] = contentUri;
    if (contributionId != null)
      json['contributionId'] = contributionId;
    if (dashboard != null)
      json['dashboard'] = dashboard;
    if (eTag != null)
      json['eTag'] = eTag;
    if (id != null)
      json['id'] = id;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (isNameConfigurable != null)
      json['isNameConfigurable'] = isNameConfigurable;
    if (lightboxOptions != null)
      json['lightboxOptions'] = lightboxOptions;
    if (loadingImageUrl != null)
      json['loadingImageUrl'] = loadingImageUrl;
    if (name != null)
      json['name'] = name;
    if (position != null)
      json['position'] = position;
    if (settings != null)
      json['settings'] = settings;
    if (settingsVersion != null)
      json['settingsVersion'] = settingsVersion;
    if (size != null)
      json['size'] = size;
    if (typeId != null)
      json['typeId'] = typeId;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WidgetResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetResponse>() : json.map((value) => WidgetResponse.fromJson(value)).toList();
  }

  static Map<String, WidgetResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetResponse.fromJson(value));
    }
    return map;
  }
}

