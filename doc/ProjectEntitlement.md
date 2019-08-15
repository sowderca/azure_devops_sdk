# azure_devops_sdk.model.ProjectEntitlement

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignmentSource** | **String** | Assignment Source (e.g. Group or Unknown). | [optional] [default to null]
**group** | [**Group**](Group.md) |  | [optional] [default to null]
**projectPermissionInherited** | **String** | Whether the user is inheriting permissions to a project through a Azure DevOps or AAD group membership. | [optional] [default to null]
**projectRef** | [**ProjectRef**](ProjectRef.md) |  | [optional] [default to null]
**teamRefs** | [**List&lt;TeamRef&gt;**](TeamRef.md) | Team Ref. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


