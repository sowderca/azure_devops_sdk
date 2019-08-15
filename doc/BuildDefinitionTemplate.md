# azure_devops_sdk.model.BuildDefinitionTemplate

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canDelete** | **bool** | Indicates whether the template can be deleted. | [optional] [default to null]
**category** | **String** | The template category. | [optional] [default to null]
**defaultHostedQueue** | **String** | An optional hosted agent queue for the template to use by default. | [optional] [default to null]
**description** | **String** | A description of the template. | [optional] [default to null]
**icons** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**iconTaskId** | **String** | The ID of the task whose icon is used when showing this template in the UI. | [optional] [default to null]
**id** | **String** | The ID of the template. | [optional] [default to null]
**name** | **String** | The name of the template. | [optional] [default to null]
**template** | [**BuildDefinition**](BuildDefinition.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


