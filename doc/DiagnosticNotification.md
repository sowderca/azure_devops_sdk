# azure_devops_sdk.model.DiagnosticNotification

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventId** | **int** |  | [optional] [default to null]
**eventType** | **String** |  | [optional] [default to null]
**id** | **int** |  | [optional] [default to null]
**messages** | [**List&lt;NotificationDiagnosticLogMessage&gt;**](NotificationDiagnosticLogMessage.md) |  | [optional] [default to []]
**recipients** | [**Map&lt;String, DiagnosticRecipient&gt;**](DiagnosticRecipient.md) |  | [optional] [default to {}]
**result** | **String** |  | [optional] [default to null]
**stats** | **Map&lt;String, int&gt;** |  | [optional] [default to {}]
**subscriptionId** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


