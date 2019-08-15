# azure_devops_sdk.model.ArtifactTriggerConfiguration

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isTriggerSupported** | **bool** | Gets or sets the whether trigger is supported or not. | [optional] [default to null]
**isTriggerSupportedOnlyInHosted** | **bool** | Gets or sets the whether trigger is supported only on hosted environment. | [optional] [default to null]
**isWebhookSupportedAtServerLevel** | **bool** | Gets or sets the whether webhook is supported at server level. | [optional] [default to null]
**payloadHashHeaderName** | **String** | Gets or sets the payload hash header name for the artifact trigger configuration. | [optional] [default to null]
**resources** | **Map&lt;String, String&gt;** | Gets or sets the resources for artifact trigger configuration. | [optional] [default to {}]
**webhookPayloadMapping** | **Map&lt;String, String&gt;** | Gets or sets the webhook payload mapping for artifact trigger configuration. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


