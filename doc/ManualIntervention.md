# azure_devops_sdk.model.ManualIntervention

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approver** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**comments** | **String** | Gets or sets comments for approval. | [optional] [default to null]
**createdOn** | [**DateTime**](DateTime.md) | Gets date on which it got created. | [optional] [default to null]
**id** | **int** | Gets the unique identifier for manual intervention. | [optional] [default to null]
**instructions** | **String** | Gets or sets instructions for approval. | [optional] [default to null]
**modifiedOn** | [**DateTime**](DateTime.md) | Gets date on which it got modified. | [optional] [default to null]
**name** | **String** | Gets or sets the name. | [optional] [default to null]
**release** | [**ReleaseShallowReference**](ReleaseShallowReference.md) |  | [optional] [default to null]
**releaseDefinition** | [**ReleaseDefinitionShallowReference**](ReleaseDefinitionShallowReference.md) |  | [optional] [default to null]
**releaseEnvironment** | [**ReleaseEnvironmentShallowReference**](ReleaseEnvironmentShallowReference.md) |  | [optional] [default to null]
**status** | **String** | Gets or sets the status of the manual intervention. | [optional] [default to null]
**taskInstanceId** | **String** | Get task instance identifier. | [optional] [default to null]
**url** | **String** | Gets url to access the manual intervention. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


