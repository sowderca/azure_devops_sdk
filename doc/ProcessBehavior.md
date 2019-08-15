# azure_devops_sdk.model.ProcessBehavior

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**color** | **String** | Color. | [optional] [default to null]
**customization** | **String** | Indicates the type of customization on this work item. System behaviors are inherited from parent process but not modified. Inherited behaviors are modified modified behaviors that were inherited from parent process. Custom behaviors are behaviors created by user in current process. | [optional] [default to null]
**description** | **String** | . Description | [optional] [default to null]
**fields** | [**List&lt;ProcessBehaviorField&gt;**](ProcessBehaviorField.md) | Process Behavior Fields. | [optional] [default to []]
**inherits** | [**ProcessBehaviorReference**](ProcessBehaviorReference.md) |  | [optional] [default to null]
**name** | **String** | Behavior Name. | [optional] [default to null]
**rank** | **int** | Rank of the behavior | [optional] [default to null]
**referenceName** | **String** | Behavior Id | [optional] [default to null]
**url** | **String** | Url of the behavior. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


