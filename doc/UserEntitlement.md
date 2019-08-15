# azure_devops_sdk.model.UserEntitlement

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessLevel** | [**AccessLevel**](AccessLevel.md) |  | [optional] [default to null]
**dateCreated** | [**DateTime**](DateTime.md) | [Readonly] Date the user was added to the collection. | [optional] [default to null]
**extensions** | [**List&lt;Extension&gt;**](Extension.md) | User&#39;s extensions. | [optional] [default to []]
**groupAssignments** | [**List&lt;GroupEntitlement&gt;**](GroupEntitlement.md) | [Readonly] GroupEntitlements that this user belongs to. | [optional] [default to []]
**id** | **String** | The unique identifier which matches the Id of the Identity associated with the GraphMember. | [optional] [default to null]
**lastAccessedDate** | [**DateTime**](DateTime.md) | [Readonly] Date the user last accessed the collection. | [optional] [default to null]
**projectEntitlements** | [**List&lt;ProjectEntitlement&gt;**](ProjectEntitlement.md) | Relation between a project and the user&#39;s effective permissions in that project. | [optional] [default to []]
**user** | [**GraphUser**](GraphUser.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


