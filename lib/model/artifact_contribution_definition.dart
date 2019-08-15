part of azure_devops_sdk.api;

class ArtifactContributionDefinition {
  
  ArtifactTriggerConfiguration artifactTriggerConfiguration = null;
  
  String artifactType = null;
  
  Map<String, String> artifactTypeStreamMapping = {};
  
  Map<String, String> browsableArtifactTypeMapping = {};
  
  List<DataSourceBinding> dataSourceBindings = [];
  
  String displayName = null;
  
  String downloadTaskId = null;
  
  String endpointTypeId = null;
  
  List<InputDescriptor> inputDescriptors = [];
  
  bool isCommitsTraceabilitySupported = null;
  
  bool isWorkitemsTraceabilitySupported = null;
  
  String name = null;
  
  Map<String, String> taskInputMapping = {};
  
  String uniqueSourceIdentifier = null;
  ArtifactContributionDefinition();

  @override
  String toString() {
    return 'ArtifactContributionDefinition[artifactTriggerConfiguration=$artifactTriggerConfiguration, artifactType=$artifactType, artifactTypeStreamMapping=$artifactTypeStreamMapping, browsableArtifactTypeMapping=$browsableArtifactTypeMapping, dataSourceBindings=$dataSourceBindings, displayName=$displayName, downloadTaskId=$downloadTaskId, endpointTypeId=$endpointTypeId, inputDescriptors=$inputDescriptors, isCommitsTraceabilitySupported=$isCommitsTraceabilitySupported, isWorkitemsTraceabilitySupported=$isWorkitemsTraceabilitySupported, name=$name, taskInputMapping=$taskInputMapping, uniqueSourceIdentifier=$uniqueSourceIdentifier, ]';
  }

  ArtifactContributionDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['artifactTriggerConfiguration'] == null) {
      artifactTriggerConfiguration = null;
    } else {
      artifactTriggerConfiguration = ArtifactTriggerConfiguration.fromJson(json['artifactTriggerConfiguration']);
    }
    if (json['artifactType'] == null) {
      artifactType = null;
    } else {
          artifactType = json['artifactType'];
    }
    if (json['artifactTypeStreamMapping'] == null) {
      artifactTypeStreamMapping = null;
    } else {
          artifactTypeStreamMapping = (json['artifactTypeStreamMapping'] as Map).cast<String, String>();
    }
    if (json['browsableArtifactTypeMapping'] == null) {
      browsableArtifactTypeMapping = null;
    } else {
          browsableArtifactTypeMapping = (json['browsableArtifactTypeMapping'] as Map).cast<String, String>();
    }
    if (json['dataSourceBindings'] == null) {
      dataSourceBindings = null;
    } else {
      dataSourceBindings = DataSourceBinding.listFromJson(json['dataSourceBindings']);
    }
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['downloadTaskId'] == null) {
      downloadTaskId = null;
    } else {
          downloadTaskId = json['downloadTaskId'];
    }
    if (json['endpointTypeId'] == null) {
      endpointTypeId = null;
    } else {
          endpointTypeId = json['endpointTypeId'];
    }
    if (json['inputDescriptors'] == null) {
      inputDescriptors = null;
    } else {
      inputDescriptors = InputDescriptor.listFromJson(json['inputDescriptors']);
    }
    if (json['isCommitsTraceabilitySupported'] == null) {
      isCommitsTraceabilitySupported = null;
    } else {
          isCommitsTraceabilitySupported = json['isCommitsTraceabilitySupported'];
    }
    if (json['isWorkitemsTraceabilitySupported'] == null) {
      isWorkitemsTraceabilitySupported = null;
    } else {
          isWorkitemsTraceabilitySupported = json['isWorkitemsTraceabilitySupported'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['taskInputMapping'] == null) {
      taskInputMapping = null;
    } else {
          taskInputMapping = (json['taskInputMapping'] as Map).cast<String, String>();
    }
    if (json['uniqueSourceIdentifier'] == null) {
      uniqueSourceIdentifier = null;
    } else {
          uniqueSourceIdentifier = json['uniqueSourceIdentifier'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (artifactTriggerConfiguration != null)
      json['artifactTriggerConfiguration'] = artifactTriggerConfiguration;
    if (artifactType != null)
      json['artifactType'] = artifactType;
    if (artifactTypeStreamMapping != null)
      json['artifactTypeStreamMapping'] = artifactTypeStreamMapping;
    if (browsableArtifactTypeMapping != null)
      json['browsableArtifactTypeMapping'] = browsableArtifactTypeMapping;
    if (dataSourceBindings != null)
      json['dataSourceBindings'] = dataSourceBindings;
    if (displayName != null)
      json['displayName'] = displayName;
    if (downloadTaskId != null)
      json['downloadTaskId'] = downloadTaskId;
    if (endpointTypeId != null)
      json['endpointTypeId'] = endpointTypeId;
    if (inputDescriptors != null)
      json['inputDescriptors'] = inputDescriptors;
    if (isCommitsTraceabilitySupported != null)
      json['isCommitsTraceabilitySupported'] = isCommitsTraceabilitySupported;
    if (isWorkitemsTraceabilitySupported != null)
      json['isWorkitemsTraceabilitySupported'] = isWorkitemsTraceabilitySupported;
    if (name != null)
      json['name'] = name;
    if (taskInputMapping != null)
      json['taskInputMapping'] = taskInputMapping;
    if (uniqueSourceIdentifier != null)
      json['uniqueSourceIdentifier'] = uniqueSourceIdentifier;
    return json;
  }

  static List<ArtifactContributionDefinition> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactContributionDefinition>() : json.map((value) => ArtifactContributionDefinition.fromJson(value)).toList();
  }

  static Map<String, ArtifactContributionDefinition> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactContributionDefinition>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactContributionDefinition.fromJson(value));
    }
    return map;
  }
}

