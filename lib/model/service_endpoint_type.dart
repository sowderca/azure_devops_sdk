part of azure_devops_sdk.api;

class ServiceEndpointType {
  /* Authentication scheme of service endpoint type. */
  List<ServiceEndpointAuthenticationScheme> authenticationSchemes = [];
  /* Data sources of service endpoint type. */
  List<DataSource> dataSources = [];
  /* Dependency data of service endpoint type. */
  List<DependencyData> dependencyData = [];
  /* Gets or sets the description of service endpoint type. */
  String description = null;
  /* Gets or sets the display name of service endpoint type. */
  String displayName = null;
  
  EndpointUrl endpointUrl = null;
  
  HelpLink helpLink = null;
  /* Gets or sets the help text shown at the endpoint create dialog. */
  String helpMarkDown = null;
  /* Gets or sets the icon url of service endpoint type. */
  String iconUrl = null;
  /* Input descriptor of service endpoint type. */
  List<InputDescriptor> inputDescriptors = [];
  /* Gets or sets the name of service endpoint type. */
  String name = null;
  /* Trusted hosts of a service endpoint type. */
  List<String> trustedHosts = [];
  /* Gets or sets the ui contribution id of service endpoint type. */
  String uiContributionId = null;
  ServiceEndpointType();

  @override
  String toString() {
    return 'ServiceEndpointType[authenticationSchemes=$authenticationSchemes, dataSources=$dataSources, dependencyData=$dependencyData, description=$description, displayName=$displayName, endpointUrl=$endpointUrl, helpLink=$helpLink, helpMarkDown=$helpMarkDown, iconUrl=$iconUrl, inputDescriptors=$inputDescriptors, name=$name, trustedHosts=$trustedHosts, uiContributionId=$uiContributionId, ]';
  }

  ServiceEndpointType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['authenticationSchemes'] == null) {
      authenticationSchemes = null;
    } else {
      authenticationSchemes = ServiceEndpointAuthenticationScheme.listFromJson(json['authenticationSchemes']);
    }
    if (json['dataSources'] == null) {
      dataSources = null;
    } else {
      dataSources = DataSource.listFromJson(json['dataSources']);
    }
    if (json['dependencyData'] == null) {
      dependencyData = null;
    } else {
      dependencyData = DependencyData.listFromJson(json['dependencyData']);
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['endpointUrl'] == null) {
      endpointUrl = null;
    } else {
      endpointUrl = EndpointUrl.fromJson(json['endpointUrl']);
    }
    if (json['helpLink'] == null) {
      helpLink = null;
    } else {
      helpLink = HelpLink.fromJson(json['helpLink']);
    }
    if (json['helpMarkDown'] == null) {
      helpMarkDown = null;
    } else {
          helpMarkDown = json['helpMarkDown'];
    }
    if (json['iconUrl'] == null) {
      iconUrl = null;
    } else {
          iconUrl = json['iconUrl'];
    }
    if (json['inputDescriptors'] == null) {
      inputDescriptors = null;
    } else {
      inputDescriptors = InputDescriptor.listFromJson(json['inputDescriptors']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['trustedHosts'] == null) {
      trustedHosts = null;
    } else {
      trustedHosts = (json['trustedHosts'] as List).cast<String>();
    }
    if (json['uiContributionId'] == null) {
      uiContributionId = null;
    } else {
          uiContributionId = json['uiContributionId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authenticationSchemes != null)
      json['authenticationSchemes'] = authenticationSchemes;
    if (dataSources != null)
      json['dataSources'] = dataSources;
    if (dependencyData != null)
      json['dependencyData'] = dependencyData;
    if (description != null)
      json['description'] = description;
    if (displayName != null)
      json['displayName'] = displayName;
    if (endpointUrl != null)
      json['endpointUrl'] = endpointUrl;
    if (helpLink != null)
      json['helpLink'] = helpLink;
    if (helpMarkDown != null)
      json['helpMarkDown'] = helpMarkDown;
    if (iconUrl != null)
      json['iconUrl'] = iconUrl;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (name != null)
      json['name'] = name;
    if (trustedHosts != null)
      json['trustedHosts'] = trustedHosts;
    if (uiContributionId != null)
      json['uiContributionId'] = uiContributionId;
    return json;
  }

  static List<ServiceEndpointType> listFromJson(List<dynamic> json) {
    return json == null ? List<ServiceEndpointType>() : json.map((value) => ServiceEndpointType.fromJson(value)).toList();
  }

  static Map<String, ServiceEndpointType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceEndpointType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServiceEndpointType.fromJson(value));
    }
    return map;
  }
}

