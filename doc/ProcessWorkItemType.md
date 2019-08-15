# azure_devops_sdk.model.ProcessWorkItemType

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behaviors** | [**List&lt;WorkItemTypeBehavior&gt;**](WorkItemTypeBehavior.md) |  | [optional] [default to []]
**color** | **String** | Color hexadecimal code to represent the work item type | [optional] [default to null]
**customization** | **String** | Indicates the type of customization on this work item System work item types are inherited from parent process but not modified Inherited work item types are modified work item that were inherited from parent process Custom work item types are work item types that were created in the current process | [optional] [default to null]
**description** | **String** | Description of the work item type | [optional] [default to null]
**icon** | **String** | Icon to represent the work item typ | [optional] [default to null]
**inherits** | **String** | Reference name of the parent work item type | [optional] [default to null]
**isDisabled** | **bool** | Indicates if a work item type is disabled | [optional] [default to null]
**layout** | [**FormLayout**](FormLayout.md) |  | [optional] [default to null]
**name** | **String** | Name of the work item type | [optional] [default to null]
**referenceName** | **String** | Reference name of work item type | [optional] [default to null]
**states** | [**List&lt;WorkItemStateResultModel&gt;**](WorkItemStateResultModel.md) |  | [optional] [default to []]
**url** | **String** | Url of the work item type | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


