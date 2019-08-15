# azure_devops_sdk.model.NotificationEventType

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | [**NotificationEventTypeCategory**](NotificationEventTypeCategory.md) |  | [optional] [default to null]
**color** | **String** | Gets or sets the color representing this event type. Example: rgb(128,245,211) or #fafafa | [optional] [default to null]
**customSubscriptionsAllowed** | **bool** |  | [optional] [default to null]
**eventPublisher** | [**NotificationEventPublisher**](NotificationEventPublisher.md) |  | [optional] [default to null]
**fields** | [**Map&lt;String, NotificationEventField&gt;**](NotificationEventField.md) |  | [optional] [default to {}]
**hasInitiator** | **bool** |  | [optional] [default to null]
**icon** | **String** | Gets or sets the icon representing this event type. Can be a URL or a CSS class. Example: css://some-css-class | [optional] [default to null]
**id** | **String** | Gets or sets the unique identifier of this event definition. | [optional] [default to null]
**name** | **String** | Gets or sets the name of this event definition. | [optional] [default to null]
**roles** | [**List&lt;NotificationEventRole&gt;**](NotificationEventRole.md) |  | [optional] [default to []]
**supportedScopes** | **List&lt;String&gt;** | Gets or sets the scopes that this event type supports | [optional] [default to []]
**url** | **String** | Gets or sets the rest end point to get this event type details (fields, fields types) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


