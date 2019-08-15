# azure_devops_sdk.model.Notification

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdDate** | [**DateTime**](DateTime.md) | Gets or sets date and time that this result was created. | [optional] [default to null]
**details** | [**NotificationDetails**](NotificationDetails.md) |  | [optional] [default to null]
**eventId** | **String** | The event id associated with this notification | [optional] [default to null]
**id** | **int** | The notification id | [optional] [default to null]
**modifiedDate** | [**DateTime**](DateTime.md) | Gets or sets date and time that this result was last modified. | [optional] [default to null]
**result** | **String** | Result of the notification | [optional] [default to null]
**status** | **String** | Status of the notification | [optional] [default to null]
**subscriberId** | **String** | The subscriber Id  associated with this notification. This is the last identity who touched in the subscription. In case of test notifications it can be the tester if the subscription is not created yet. | [optional] [default to null]
**subscriptionId** | **String** | The subscription id associated with this notification | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


