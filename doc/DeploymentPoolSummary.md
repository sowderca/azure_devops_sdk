# azure_devops_sdk.model.DeploymentPoolSummary

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deploymentGroups** | [**List&lt;DeploymentGroupReference&gt;**](DeploymentGroupReference.md) | List of deployment groups referring to the deployment pool. | [optional] [default to []]
**offlineAgentsCount** | **int** | Number of deployment agents that are offline. | [optional] [default to null]
**onlineAgentsCount** | **int** | Number of deployment agents that are online. | [optional] [default to null]
**pool** | [**TaskAgentPoolReference**](TaskAgentPoolReference.md) |  | [optional] [default to null]
**resource** | [**EnvironmentResourceReference**](EnvironmentResourceReference.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


