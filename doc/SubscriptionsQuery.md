# azure_devops_sdk.model.SubscriptionsQuery

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consumerActionId** | **String** | Optional consumer action id to restrict the results to (null for any) | [optional] [default to null]
**consumerId** | **String** | Optional consumer id to restrict the results to (null for any) | [optional] [default to null]
**consumerInputFilters** | [**List&lt;InputFilter&gt;**](InputFilter.md) | Filter for subscription consumer inputs | [optional] [default to []]
**eventType** | **String** | Optional event type id to restrict the results to (null for any) | [optional] [default to null]
**publisherId** | **String** | Optional publisher id to restrict the results to (null for any) | [optional] [default to null]
**publisherInputFilters** | [**List&lt;InputFilter&gt;**](InputFilter.md) | Filter for subscription publisher inputs | [optional] [default to []]
**results** | [**List&lt;Subscription&gt;**](Subscription.md) | Results from the query | [optional] [default to []]
**subscriberId** | **String** | Optional subscriber filter. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


