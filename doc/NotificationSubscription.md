# azure_devops_sdk.model.NotificationSubscription

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**adminSettings** | [**SubscriptionAdminSettings**](SubscriptionAdminSettings.md) |  | [optional] [default to null]
**channel** | [**ISubscriptionChannel**](ISubscriptionChannel.md) |  | [optional] [default to null]
**description** | **String** | Description of the subscription. Typically describes filter criteria which helps identity the subscription. | [optional] [default to null]
**diagnostics** | [**SubscriptionDiagnostics**](SubscriptionDiagnostics.md) |  | [optional] [default to null]
**extendedProperties** | **Map&lt;String, String&gt;** | Any extra properties like detailed description for different contexts, user/group contexts | [optional] [default to {}]
**filter** | [**ISubscriptionFilter**](ISubscriptionFilter.md) |  | [optional] [default to null]
**flags** | **String** | Read-only indicators that further describe the subscription. | [optional] [default to null]
**id** | **String** | Subscription identifier. | [optional] [default to null]
**lastModifiedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**modifiedDate** | [**DateTime**](DateTime.md) | Date when the subscription was last modified. If the subscription has not been updated since it was created, this value will indicate when the subscription was created. | [optional] [default to null]
**permissions** | **String** | The permissions the user have for this subscriptions. | [optional] [default to null]
**scope** | [**SubscriptionScope**](SubscriptionScope.md) |  | [optional] [default to null]
**status** | **String** | Status of the subscription. Typically indicates whether the subscription is enabled or not. | [optional] [default to null]
**statusMessage** | **String** | Message that provides more details about the status of the subscription. | [optional] [default to null]
**subscriber** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**url** | **String** | REST API URL of the subscriotion. | [optional] [default to null]
**userSettings** | [**SubscriptionUserSettings**](SubscriptionUserSettings.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


