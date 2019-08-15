# azure_devops_sdk.model.GroupEntitlement

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extensionRules** | [**List&lt;Extension&gt;**](Extension.md) | Extension Rules. | [optional] [default to []]
**group** | [**GraphGroup**](GraphGroup.md) |  | [optional] [default to null]
**id** | **String** | The unique identifier which matches the Id of the GraphMember. | [optional] [default to null]
**lastExecuted** | [**DateTime**](DateTime.md) | [Readonly] The last time the group licensing rule was executed (regardless of whether any changes were made). | [optional] [default to null]
**licenseRule** | [**AccessLevel**](AccessLevel.md) |  | [optional] [default to null]
**members** | [**List&lt;UserEntitlement&gt;**](UserEntitlement.md) | Group members. Only used when creating a new group. | [optional] [default to []]
**projectEntitlements** | [**List&lt;ProjectEntitlement&gt;**](ProjectEntitlement.md) | Relation between a project and the member&#39;s effective permissions in that project. | [optional] [default to []]
**status** | **String** | The status of the group rule. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


