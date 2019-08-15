# azure_devops_sdk.model.Change

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**displayUri** | **String** | The location of a user-friendly representation of the resource. | [optional] [default to null]
**id** | **String** | The identifier for the change. For a commit, this would be the SHA1. For a TFVC changeset, this would be the changeset ID. | [optional] [default to null]
**location** | **String** | The location of the full representation of the resource. | [optional] [default to null]
**message** | **String** | The description of the change. This might be a commit message or changeset description. | [optional] [default to null]
**messageTruncated** | **bool** | Indicates whether the message was truncated. | [optional] [default to null]
**pusher** | **String** | The person or process that pushed the change. | [optional] [default to null]
**timestamp** | [**DateTime**](DateTime.md) | The timestamp for the change. | [optional] [default to null]
**type** | **String** | The type of change. \&quot;commit\&quot;, \&quot;changeset\&quot;, etc. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


