# azure_devops_sdk.model.TaskAgentSession

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | [**TaskAgentReference**](TaskAgentReference.md) |  | [optional] [default to null]
**encryptionKey** | [**TaskAgentSessionKey**](TaskAgentSessionKey.md) |  | [optional] [default to null]
**ownerName** | **String** | Gets or sets the owner name of this session. Generally this will be the machine of origination. | [optional] [default to null]
**sessionId** | **String** | Gets the unique identifier for this session. | [optional] [default to null]
**systemCapabilities** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


