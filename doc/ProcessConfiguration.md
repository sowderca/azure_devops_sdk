# azure_devops_sdk.model.ProcessConfiguration

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bugWorkItems** | [**CategoryConfiguration**](CategoryConfiguration.md) |  | [optional] [default to null]
**portfolioBacklogs** | [**List&lt;CategoryConfiguration&gt;**](CategoryConfiguration.md) | Details about portfolio backlogs | [optional] [default to []]
**requirementBacklog** | [**CategoryConfiguration**](CategoryConfiguration.md) |  | [optional] [default to null]
**taskBacklog** | [**CategoryConfiguration**](CategoryConfiguration.md) |  | [optional] [default to null]
**typeFields** | [**Map&lt;String, WorkItemFieldReference&gt;**](WorkItemFieldReference.md) | Type fields for the process configuration | [optional] [default to {}]
**url** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


