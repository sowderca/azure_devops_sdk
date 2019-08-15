# azure_devops_sdk.model.NotificationsQuery

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**associatedSubscriptions** | [**List&lt;Subscription&gt;**](Subscription.md) | The subscriptions associated with the notifications returned from the query | [optional] [default to []]
**includeDetails** | **bool** | If true, we will return all notification history for the query provided; otherwise, the summary is returned. | [optional] [default to null]
**maxCreatedDate** | [**DateTime**](DateTime.md) | Optional maximum date at which the notification was created | [optional] [default to null]
**maxResults** | **int** | Optional maximum number of overall results to include | [optional] [default to null]
**maxResultsPerSubscription** | **int** | Optional maximum number of results for each subscription. Only takes effect when a list of subscription ids is supplied in the query. | [optional] [default to null]
**minCreatedDate** | [**DateTime**](DateTime.md) | Optional minimum date at which the notification was created | [optional] [default to null]
**publisherId** | **String** | Optional publisher id to restrict the results to | [optional] [default to null]
**results** | [**List&lt;Notification&gt;**](Notification.md) | Results from the query | [optional] [default to []]
**resultType** | **String** | Optional notification result type to filter results to | [optional] [default to null]
**status** | **String** | Optional notification status to filter results to | [optional] [default to null]
**subscriptionIds** | **List&lt;String&gt;** | Optional list of subscription ids to restrict the results to | [optional] [default to []]
**summary** | [**List&lt;NotificationSummary&gt;**](NotificationSummary.md) | Summary of notifications - the count of each result type (success, fail, ..). | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


