part of azure_devops_sdk.api;

class InstalledExtension {
  /* Uri used as base for other relative uri's defined in extension */
  String baseUri = null;
  /* List of shared constraints defined by this extension */
  List<ContributionConstraint> constraints = [];
  /* List of contributions made by this extension */
  List<Contribution> contributions = [];
  /* List of contribution types defined by this extension */
  List<ContributionType> contributionTypes = [];
  /* List of explicit demands required by this extension */
  List<String> demands = [];
  
  ExtensionEventCallbackCollection eventCallbacks = null;
  /* Secondary location that can be used as base for other relative uri's defined in extension */
  String fallbackBaseUri = null;
  /* Language Culture Name set by the Gallery */
  String language = null;
  
  ExtensionLicensing licensing = null;
  /* Version of the extension manifest format/content */
  double manifestVersion = null;
  /* Default user claims applied to all contributions (except the ones which have been specified restrictedTo explicitly) to control the visibility of a contribution. */
  List<String> restrictedTo = [];
  /* List of all oauth scopes required by this extension */
  List<String> scopes = [];
  /* The ServiceInstanceType(Guid) of the VSTS service that must be available to an account in order for the extension to be installed */
  String serviceInstanceType = null;
  InstalledExtension();

  @override
  String toString() {
    return 'InstalledExtension[baseUri=$baseUri, constraints=$constraints, contributions=$contributions, contributionTypes=$contributionTypes, demands=$demands, eventCallbacks=$eventCallbacks, fallbackBaseUri=$fallbackBaseUri, language=$language, licensing=$licensing, manifestVersion=$manifestVersion, restrictedTo=$restrictedTo, scopes=$scopes, serviceInstanceType=$serviceInstanceType, ]';
  }

  InstalledExtension.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseUri'] == null) {
      baseUri = null;
    } else {
          baseUri = json['baseUri'];
    }
    if (json['constraints'] == null) {
      constraints = null;
    } else {
      constraints = ContributionConstraint.listFromJson(json['constraints']);
    }
    if (json['contributions'] == null) {
      contributions = null;
    } else {
      contributions = Contribution.listFromJson(json['contributions']);
    }
    if (json['contributionTypes'] == null) {
      contributionTypes = null;
    } else {
      contributionTypes = ContributionType.listFromJson(json['contributionTypes']);
    }
    if (json['demands'] == null) {
      demands = null;
    } else {
      demands = (json['demands'] as List).cast<String>();
    }
    if (json['eventCallbacks'] == null) {
      eventCallbacks = null;
    } else {
      eventCallbacks = ExtensionEventCallbackCollection.fromJson(json['eventCallbacks']);
    }
    if (json['fallbackBaseUri'] == null) {
      fallbackBaseUri = null;
    } else {
          fallbackBaseUri = json['fallbackBaseUri'];
    }
    if (json['language'] == null) {
      language = null;
    } else {
          language = json['language'];
    }
    if (json['licensing'] == null) {
      licensing = null;
    } else {
      licensing = ExtensionLicensing.fromJson(json['licensing']);
    }
    if (json['manifestVersion'] == null) {
      manifestVersion = null;
    } else {
          manifestVersion = json['manifestVersion'].toDouble();
    }
    if (json['restrictedTo'] == null) {
      restrictedTo = null;
    } else {
      restrictedTo = (json['restrictedTo'] as List).cast<String>();
    }
    if (json['scopes'] == null) {
      scopes = null;
    } else {
      scopes = (json['scopes'] as List).cast<String>();
    }
    if (json['serviceInstanceType'] == null) {
      serviceInstanceType = null;
    } else {
          serviceInstanceType = json['serviceInstanceType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseUri != null)
      json['baseUri'] = baseUri;
    if (constraints != null)
      json['constraints'] = constraints;
    if (contributions != null)
      json['contributions'] = contributions;
    if (contributionTypes != null)
      json['contributionTypes'] = contributionTypes;
    if (demands != null)
      json['demands'] = demands;
    if (eventCallbacks != null)
      json['eventCallbacks'] = eventCallbacks;
    if (fallbackBaseUri != null)
      json['fallbackBaseUri'] = fallbackBaseUri;
    if (language != null)
      json['language'] = language;
    if (licensing != null)
      json['licensing'] = licensing;
    if (manifestVersion != null)
      json['manifestVersion'] = manifestVersion;
    if (restrictedTo != null)
      json['restrictedTo'] = restrictedTo;
    if (scopes != null)
      json['scopes'] = scopes;
    if (serviceInstanceType != null)
      json['serviceInstanceType'] = serviceInstanceType;
    return json;
  }

  static List<InstalledExtension> listFromJson(List<dynamic> json) {
    return json == null ? List<InstalledExtension>() : json.map((value) => InstalledExtension.fromJson(value)).toList();
  }

  static Map<String, InstalledExtension> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InstalledExtension>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InstalledExtension.fromJson(value));
    }
    return map;
  }
}

