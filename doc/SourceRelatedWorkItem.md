# azure_devops_sdk.model.SourceRelatedWorkItem

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**assignedTo** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**currentState** | **String** | Current state of the work item, e.g. Active, Resolved, Closed, etc. | [optional] [default to null]
**description** | **String** | Long description for the work item. | [optional] [default to null]
**id** | **String** | Unique identifier for the work item | [optional] [default to null]
**providerName** | **String** | The name of the provider the work item is associated with. | [optional] [default to null]
**title** | **String** | Short name for the work item. | [optional] [default to null]
**type** | **String** | Type of work item, e.g. Bug, Task, User Story, etc. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


