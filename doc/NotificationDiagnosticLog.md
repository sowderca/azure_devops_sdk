# azure_devops_sdk.model.NotificationDiagnosticLog

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityId** | **String** | Identifier used for correlating to other diagnostics that may have been recorded elsewhere. | [optional] [default to null]
**description** | **String** |  | [optional] [default to null]
**endTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**errors** | **int** |  | [optional] [default to null]
**id** | **String** | Unique instance identifier. | [optional] [default to null]
**logType** | **String** |  | [optional] [default to null]
**messages** | [**List&lt;NotificationDiagnosticLogMessage&gt;**](NotificationDiagnosticLogMessage.md) |  | [optional] [default to []]
**properties** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**source** | **String** | This identifier depends on the logType.  For notification jobs, this will be the job Id. For subscription tracing, this will be a special root Guid with the subscription Id encoded. | [optional] [default to null]
**startTime** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**warnings** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


