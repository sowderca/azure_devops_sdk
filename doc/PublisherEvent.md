# azure_devops_sdk.model.PublisherEvent

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**diagnostics** | **Map&lt;String, String&gt;** | Add key/value pairs which will be stored with a published notification in the SH service DB.  This key/value pairs are for diagnostic purposes only and will have not effect on the delivery of a notificaton. | [optional] [default to {}]
**event** | [**Event**](Event.md) |  | [optional] [default to null]
**isFilteredEvent** | **bool** | Gets or sets flag for filtered events | [optional] [default to null]
**notificationData** | **Map&lt;String, String&gt;** | Additional data that needs to be sent as part of notification to complement the Resource data in the Event | [optional] [default to {}]
**otherResourceVersions** | [**List&lt;VersionedResource&gt;**](VersionedResource.md) | Gets or sets the array of older supported resource versions. | [optional] [default to []]
**publisherInputFilters** | [**List&lt;InputFilter&gt;**](InputFilter.md) | Optional publisher-input filters which restricts the set of subscriptions which are triggered by the event | [optional] [default to []]
**subscription** | [**Subscription**](Subscription.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


