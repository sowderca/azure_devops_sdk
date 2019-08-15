# azure_devops_sdk.model.ReleaseDefinitionGatesOptions

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isEnabled** | **bool** | Gets or sets as the gates enabled or not. | [optional] [default to null]
**minimumSuccessDuration** | **int** | Gets or sets the minimum duration for steady results after a successful gates evaluation. | [optional] [default to null]
**samplingInterval** | **int** | Gets or sets the time between re-evaluation of gates. | [optional] [default to null]
**stabilizationTime** | **int** | Gets or sets the delay before evaluation. | [optional] [default to null]
**timeout** | **int** | Gets or sets the timeout after which gates fail. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


