# azure_devops_sdk.model.NotificationDetails

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completedDate** | [**DateTime**](DateTime.md) | Gets or sets the time that this notification was completed (response received from the consumer) | [optional] [default to null]
**consumerActionId** | **String** | Gets or sets this notification detail&#39;s consumer action identifier. | [optional] [default to null]
**consumerId** | **String** | Gets or sets this notification detail&#39;s consumer identifier. | [optional] [default to null]
**consumerInputs** | **Map&lt;String, String&gt;** | Gets or sets this notification detail&#39;s consumer inputs. | [optional] [default to {}]
**dequeuedDate** | [**DateTime**](DateTime.md) | Gets or sets the time that this notification was dequeued for processing | [optional] [default to null]
**errorDetail** | **String** | Gets or sets this notification detail&#39;s error detail. | [optional] [default to null]
**errorMessage** | **String** | Gets or sets this notification detail&#39;s error message. | [optional] [default to null]
**event** | [**Event**](Event.md) |  | [optional] [default to null]
**eventType** | **String** | Gets or sets this notification detail&#39;s event type. | [optional] [default to null]
**processedDate** | [**DateTime**](DateTime.md) | Gets or sets the time that this notification was finished processing (just before the request is sent to the consumer) | [optional] [default to null]
**publisherId** | **String** | Gets or sets this notification detail&#39;s publisher identifier. | [optional] [default to null]
**publisherInputs** | **Map&lt;String, String&gt;** | Gets or sets this notification detail&#39;s publisher inputs. | [optional] [default to {}]
**queuedDate** | [**DateTime**](DateTime.md) | Gets or sets the time that this notification was queued (created) | [optional] [default to null]
**request** | **String** | Gets or sets this notification detail&#39;s request. | [optional] [default to null]
**requestAttempts** | **int** | Number of requests attempted to be sent to the consumer | [optional] [default to null]
**requestDuration** | **double** | Duration of the request to the consumer in seconds | [optional] [default to null]
**response** | **String** | Gets or sets this notification detail&#39;s response. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


