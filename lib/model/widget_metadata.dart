part of azure_devops_sdk.api;

class WidgetMetadata {
  /* Sizes supported by the Widget. */
  List<WidgetSize> allowedSizes = [];
  /* Opt-in boolean that indicates if the widget requires the Analytics Service to function. Widgets requiring the analytics service are hidden from the catalog if the Analytics Service is not available. */
  bool analyticsServiceRequired = null;
  /* Resource for an icon in the widget catalog. */
  String catalogIconUrl = null;
  /* Opt-in URL string pointing at widget information. Defaults to extension marketplace URL if omitted */
  String catalogInfoUrl = null;
  /* The id of the underlying contribution defining the supplied Widget custom configuration UI. Null if custom configuration UI is not available. */
  String configurationContributionId = null;
  /* The relative id of the underlying contribution defining the supplied Widget custom configuration UI. Null if custom configuration UI is not available. */
  String configurationContributionRelativeId = null;
  /* Indicates if the widget requires configuration before being added to dashboard. */
  bool configurationRequired = null;
  /* Uri for the widget content to be loaded from . */
  String contentUri = null;
  /* The id of the underlying contribution defining the supplied Widget. */
  String contributionId = null;
  /* Optional default settings to be copied into widget settings. */
  String defaultSettings = null;
  /* Summary information describing the widget. */
  String description = null;
  /* Widgets can be disabled by the app store.  We'll need to gracefully handle for: - persistence (Allow) - Requests (Tag as disabled, and provide context) */
  bool isEnabled = null;
  /* Opt-out boolean that indicates if the widget supports widget name/title configuration. Widgets ignoring the name should set it to false in the manifest. */
  bool isNameConfigurable = null;
  /* Opt-out boolean indicating if the widget is hidden from the catalog. Commonly, this is used to allow developers to disable creation of a deprecated widget. A widget must have a functional default state, or have a configuration experience, in order to be visible from the catalog. */
  bool isVisibleFromCatalog = null;
  
  LightboxOptions lightboxOptions = null;
  /* Resource for a loading placeholder image on dashboard */
  String loadingImageUrl = null;
  /* User facing name of the widget type. Each widget must use a unique value here. */
  String name = null;
  /* Publisher Name of this kind of widget. */
  String publisherName = null;
  /* Data contract required for the widget to function and to work in its container. */
  List<Object> supportedScopes = [];
  /* Contribution target IDs */
  List<String> targets = [];
  /* Deprecated: locally unique developer-facing id of this kind of widget. ContributionId provides a globally unique identifier for widget types. */
  String typeId = null;
  WidgetMetadata();

  @override
  String toString() {
    return 'WidgetMetadata[allowedSizes=$allowedSizes, analyticsServiceRequired=$analyticsServiceRequired, catalogIconUrl=$catalogIconUrl, catalogInfoUrl=$catalogInfoUrl, configurationContributionId=$configurationContributionId, configurationContributionRelativeId=$configurationContributionRelativeId, configurationRequired=$configurationRequired, contentUri=$contentUri, contributionId=$contributionId, defaultSettings=$defaultSettings, description=$description, isEnabled=$isEnabled, isNameConfigurable=$isNameConfigurable, isVisibleFromCatalog=$isVisibleFromCatalog, lightboxOptions=$lightboxOptions, loadingImageUrl=$loadingImageUrl, name=$name, publisherName=$publisherName, supportedScopes=$supportedScopes, targets=$targets, typeId=$typeId, ]';
  }

  WidgetMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['allowedSizes'] == null) {
      allowedSizes = null;
    } else {
      allowedSizes = WidgetSize.listFromJson(json['allowedSizes']);
    }
    if (json['analyticsServiceRequired'] == null) {
      analyticsServiceRequired = null;
    } else {
          analyticsServiceRequired = json['analyticsServiceRequired'];
    }
    if (json['catalogIconUrl'] == null) {
      catalogIconUrl = null;
    } else {
          catalogIconUrl = json['catalogIconUrl'];
    }
    if (json['catalogInfoUrl'] == null) {
      catalogInfoUrl = null;
    } else {
          catalogInfoUrl = json['catalogInfoUrl'];
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
    if (json['configurationRequired'] == null) {
      configurationRequired = null;
    } else {
          configurationRequired = json['configurationRequired'];
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
    if (json['defaultSettings'] == null) {
      defaultSettings = null;
    } else {
          defaultSettings = json['defaultSettings'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
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
    if (json['isVisibleFromCatalog'] == null) {
      isVisibleFromCatalog = null;
    } else {
          isVisibleFromCatalog = json['isVisibleFromCatalog'];
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
    if (json['publisherName'] == null) {
      publisherName = null;
    } else {
          publisherName = json['publisherName'];
    }
    if (json['supportedScopes'] == null) {
      supportedScopes = null;
    } else {
      supportedScopes = Object.listFromJson(json['supportedScopes']);
    }
    if (json['targets'] == null) {
      targets = null;
    } else {
      targets = (json['targets'] as List).cast<String>();
    }
    if (json['typeId'] == null) {
      typeId = null;
    } else {
          typeId = json['typeId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowedSizes != null)
      json['allowedSizes'] = allowedSizes;
    if (analyticsServiceRequired != null)
      json['analyticsServiceRequired'] = analyticsServiceRequired;
    if (catalogIconUrl != null)
      json['catalogIconUrl'] = catalogIconUrl;
    if (catalogInfoUrl != null)
      json['catalogInfoUrl'] = catalogInfoUrl;
    if (configurationContributionId != null)
      json['configurationContributionId'] = configurationContributionId;
    if (configurationContributionRelativeId != null)
      json['configurationContributionRelativeId'] = configurationContributionRelativeId;
    if (configurationRequired != null)
      json['configurationRequired'] = configurationRequired;
    if (contentUri != null)
      json['contentUri'] = contentUri;
    if (contributionId != null)
      json['contributionId'] = contributionId;
    if (defaultSettings != null)
      json['defaultSettings'] = defaultSettings;
    if (description != null)
      json['description'] = description;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (isNameConfigurable != null)
      json['isNameConfigurable'] = isNameConfigurable;
    if (isVisibleFromCatalog != null)
      json['isVisibleFromCatalog'] = isVisibleFromCatalog;
    if (lightboxOptions != null)
      json['lightboxOptions'] = lightboxOptions;
    if (loadingImageUrl != null)
      json['loadingImageUrl'] = loadingImageUrl;
    if (name != null)
      json['name'] = name;
    if (publisherName != null)
      json['publisherName'] = publisherName;
    if (supportedScopes != null)
      json['supportedScopes'] = supportedScopes;
    if (targets != null)
      json['targets'] = targets;
    if (typeId != null)
      json['typeId'] = typeId;
    return json;
  }

  static List<WidgetMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<WidgetMetadata>() : json.map((value) => WidgetMetadata.fromJson(value)).toList();
  }

  static Map<String, WidgetMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WidgetMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WidgetMetadata.fromJson(value));
    }
    return map;
  }
}

