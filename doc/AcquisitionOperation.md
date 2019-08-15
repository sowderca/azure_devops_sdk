# azure_devops_sdk.model.AcquisitionOperation

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operationState** | **String** | State of the the AcquisitionOperation for the current user | [optional] [default to null]
**operationType** | **String** | AcquisitionOperationType: install, request, buy, etc... | [optional] [default to null]
**reason** | **String** | Optional reason to justify current state. Typically used with Disallow state. | [optional] [default to null]
**reasons** | [**List&lt;AcquisitionOperationDisallowReason&gt;**](AcquisitionOperationDisallowReason.md) | List of reasons indicating why the operation is not allowed. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


