# azure_devops_sdk.model.DeploymentQueryParameters

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifactSourceId** | **String** | Query deployments based specified artifact source id. | [optional] [default to null]
**artifactTypeId** | **String** | Query deployments based specified artifact type id. | [optional] [default to null]
**artifactVersions** | **List&lt;String&gt;** | Query deployments based specified artifact versions. | [optional] [default to []]
**deploymentsPerEnvironment** | **int** | Query deployments number of deployments per environment. | [optional] [default to null]
**deploymentStatus** | **String** | Query deployment based on deployment status. | [optional] [default to null]
**environments** | [**List&lt;DefinitionEnvironmentReference&gt;**](DefinitionEnvironmentReference.md) | Query deployments of specified environments. | [optional] [default to []]
**expands** | **String** | Query deployments based specified expands. | [optional] [default to null]
**isDeleted** | **bool** | Specify deleted deployments should return or not. | [optional] [default to null]
**operationStatus** | **String** | Query deployment based on deployment operation status. | [optional] [default to null]
**queryType** | **String** | Query deployments based query type. | [optional] [default to null]
**sourceBranch** | **String** | Query deployments based specified source branch. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


