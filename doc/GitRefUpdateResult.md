# azure_devops_sdk.model.GitRefUpdateResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customMessage** | **String** | Custom message for the result object For instance, Reason for failing. | [optional] [default to null]
**isLocked** | **bool** | Whether the ref is locked or not | [optional] [default to null]
**name** | **String** | Ref name | [optional] [default to null]
**newObjectId** | **String** | New object ID | [optional] [default to null]
**oldObjectId** | **String** | Old object ID | [optional] [default to null]
**rejectedBy** | **String** | Name of the plugin that rejected the updated. | [optional] [default to null]
**repositoryId** | **String** | Repository ID | [optional] [default to null]
**success** | **bool** | True if the ref update succeeded, false otherwise | [optional] [default to null]
**updateStatus** | **String** | Status of the update from the TFS server. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


