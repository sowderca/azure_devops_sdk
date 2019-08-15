# azure_devops_sdk.model.TenantDetails

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessDetails** | [**List&lt;AgentGroupAccessData&gt;**](AgentGroupAccessData.md) | Access details | [optional] [default to []]
**id** | **String** | Tenant Id | [optional] [default to null]
**staticMachines** | [**List&lt;WebApiTestMachine&gt;**](WebApiTestMachine.md) | Static machines configured for local runs | [optional] [default to []]
**userLoadAgentInput** | [**WebApiUserLoadTestMachineInput**](WebApiUserLoadTestMachineInput.md) |  | [optional] [default to null]
**userLoadAgentResourcesUri** | **String** |  | [optional] [default to null]
**validGeoLocations** | **List&lt;String&gt;** | The list of valid geo-lcations for tenant | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


