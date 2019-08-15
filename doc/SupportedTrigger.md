# azure_devops_sdk.model.SupportedTrigger

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**defaultPollingInterval** | **int** | The default interval to wait between polls (only relevant when NotificationType is Polling). | [optional] [default to null]
**notificationType** | **String** | How the trigger is notified of changes. | [optional] [default to null]
**supportedCapabilities** | [**Map&lt;String, Object&gt;**](Object.md) | The capabilities supported by this trigger. | [optional] [default to {}]
**type** | **String** | The type of trigger. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


