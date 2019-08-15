# azure_devops_sdk.model.SubscriptionQuery

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**List&lt;SubscriptionQueryCondition&gt;**](SubscriptionQueryCondition.md) | One or more conditions to query on. If more than 2 conditions are specified, the combined results of each condition is returned (i.e. conditions are logically OR&#39;ed). | [optional] [default to []]
**queryFlags** | **String** | Flags the refine the types of subscriptions that will be returned from the query. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


