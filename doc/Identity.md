# azure_devops_sdk.model.Identity

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customDisplayName** | **String** | The custom display name for the identity (if any). Setting this property to an empty string will clear the existing custom display name. Setting this property to null will not affect the existing persisted value (since null values do not get sent over the wire or to the database) | [optional] [default to null]
**descriptor** | [**IdentityDescriptor**](IdentityDescriptor.md) |  | [optional] [default to null]
**id** | **String** |  | [optional] [default to null]
**isActive** | **bool** |  | [optional] [default to null]
**isContainer** | **bool** |  | [optional] [default to null]
**masterId** | **String** |  | [optional] [default to null]
**memberIds** | **List&lt;String&gt;** |  | [optional] [default to []]
**memberOf** | [**List&lt;IdentityDescriptor&gt;**](IdentityDescriptor.md) |  | [optional] [default to []]
**members** | [**List&lt;IdentityDescriptor&gt;**](IdentityDescriptor.md) |  | [optional] [default to []]
**metaTypeId** | **int** |  | [optional] [default to null]
**properties** | [**PropertiesCollection**](PropertiesCollection.md) |  | [optional] [default to null]
**providerDisplayName** | **String** | The display name for the identity as specified by the source identity provider. | [optional] [default to null]
**resourceVersion** | **int** |  | [optional] [default to null]
**socialDescriptor** | **String** |  | [optional] [default to null]
**subjectDescriptor** | **String** |  | [optional] [default to null]
**uniqueUserId** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


