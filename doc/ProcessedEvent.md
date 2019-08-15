# azure_devops_sdk.model.ProcessedEvent

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actors** | [**List&lt;EventActor&gt;**](EventActor.md) | All of the users that were associated with this event and their role. | [optional] [default to []]
**allowedChannels** | **String** |  | [optional] [default to null]
**artifactUri** | **String** |  | [optional] [default to null]
**deliveryIdentities** | [**ProcessingIdentities**](ProcessingIdentities.md) |  | [optional] [default to null]
**evaluations** | [**Map&lt;String, SubscriptionEvaluation&gt;**](SubscriptionEvaluation.md) | Evaluations for each user | [optional] [default to {}]
**eventId** | **int** |  | [optional] [default to null]
**exclusions** | [**List&lt;EventActor&gt;**](EventActor.md) | Which members were excluded from evaluation (only applies to ActorMatcher subscriptions) | [optional] [default to []]
**inclusions** | [**List&lt;EventActor&gt;**](EventActor.md) | Which members were included for evaluation (only applies to ActorMatcher subscriptions) | [optional] [default to []]
**notifications** | [**List&lt;GeneratedNotification&gt;**](GeneratedNotification.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


