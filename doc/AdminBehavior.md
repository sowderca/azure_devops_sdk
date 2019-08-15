# azure_devops_sdk.model.AdminBehavior

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**abstract_** | **bool** | Is the behavior abstract (i.e. can not be associated with any work item type). | [optional] [default to null]
**color** | **String** | The color associated with the behavior. | [optional] [default to null]
**custom** | **bool** | Indicates if the behavior is custom. | [optional] [default to null]
**description** | **String** | The description of the behavior. | [optional] [default to null]
**fields** | [**List&lt;AdminBehaviorField&gt;**](AdminBehaviorField.md) | List of behavior fields. | [optional] [default to []]
**id** | **String** | Behavior ID. | [optional] [default to null]
**inherits** | **String** | Parent behavior reference. | [optional] [default to null]
**name** | **String** | The behavior name. | [optional] [default to null]
**overriden** | **bool** | Is the behavior overrides a behavior from system process. | [optional] [default to null]
**rank** | **int** | The rank. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


