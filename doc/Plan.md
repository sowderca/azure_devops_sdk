# azure_devops_sdk.model.Plan

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdByIdentity** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**createdDate** | [**DateTime**](DateTime.md) | Date when the plan was created | [optional] [default to null]
**description** | **String** | Description of the plan | [optional] [default to null]
**id** | **String** | Id of the plan | [optional] [default to null]
**modifiedByIdentity** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**modifiedDate** | [**DateTime**](DateTime.md) | Date when the plan was last modified. Default to CreatedDate when the plan is first created. | [optional] [default to null]
**name** | **String** | Name of the plan | [optional] [default to null]
**properties** | [**Object**](.md) | The PlanPropertyCollection instance associated with the plan. These are dependent on the type of the plan. For example, DeliveryTimelineView, it would be of type DeliveryViewPropertyCollection. | [optional] [default to null]
**revision** | **int** | Revision of the plan. Used to safeguard users from overwriting each other&#39;s changes. | [optional] [default to null]
**type** | **String** | Type of the plan | [optional] [default to null]
**url** | **String** | The resource url to locate the plan via rest api | [optional] [default to null]
**userPermissions** | **String** | Bit flag indicating set of permissions a user has to the plan. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


