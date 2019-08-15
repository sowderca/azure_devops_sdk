# azure_devops_sdk.model.MailMessage

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | Body of mail. | [optional] [default to null]
**cc** | [**EmailRecipients**](EmailRecipients.md) |  | [optional] [default to null]
**inReplyTo** | **String** | Reply to. | [optional] [default to null]
**messageId** | **String** | Message ID of the mail. | [optional] [default to null]
**replyBy** | [**DateTime**](DateTime.md) | Data when should be replied to mail. | [optional] [default to null]
**replyTo** | [**EmailRecipients**](EmailRecipients.md) |  | [optional] [default to null]
**sections** | [**List&lt;Object&gt;**](Object.md) | List of mail section types. | [optional] [default to []]
**senderType** | **String** | Mail sender type. | [optional] [default to null]
**subject** | **String** | Subject of the mail. | [optional] [default to null]
**to** | [**EmailRecipients**](EmailRecipients.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


