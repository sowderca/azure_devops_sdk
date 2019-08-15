# azure_devops_sdk.model.NotificationSubscriptionUpdateParameters

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adminSettings** | [**SubscriptionAdminSettings**](SubscriptionAdminSettings.md) |  | [optional] [default to null]
**channel** | [**ISubscriptionChannel**](ISubscriptionChannel.md) |  | [optional] [default to null]
**description** | **String** | Updated description for the subscription. Typically describes filter criteria which helps identity the subscription. | [optional] [default to null]
**filter** | [**ISubscriptionFilter**](ISubscriptionFilter.md) |  | [optional] [default to null]
**scope** | [**SubscriptionScope**](SubscriptionScope.md) |  | [optional] [default to null]
**status** | **String** | Updated status for the subscription. Typically used to enable or disable a subscription. | [optional] [default to null]
**statusMessage** | **String** | Optional message that provides more details about the updated status. | [optional] [default to null]
**userSettings** | [**SubscriptionUserSettings**](SubscriptionUserSettings.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


