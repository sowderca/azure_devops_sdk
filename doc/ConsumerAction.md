# azure_devops_sdk.model.ConsumerAction

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**allowResourceVersionOverride** | **bool** | Gets or sets the flag indicating if resource version can be overridden when creating or editing a subscription. | [optional] [default to null]
**consumerId** | **String** | Gets or sets the identifier of the consumer to which this action belongs. | [optional] [default to null]
**description** | **String** | Gets or sets this action&#39;s localized description. | [optional] [default to null]
**id** | **String** | Gets or sets this action&#39;s identifier. | [optional] [default to null]
**inputDescriptors** | [**List&lt;InputDescriptor&gt;**](InputDescriptor.md) | Gets or sets this action&#39;s input descriptors. | [optional] [default to []]
**name** | **String** | Gets or sets this action&#39;s localized name. | [optional] [default to null]
**supportedEventTypes** | **List&lt;String&gt;** | Gets or sets this action&#39;s supported event identifiers. | [optional] [default to []]
**supportedResourceVersions** | [**Map&lt;String, List&lt;String&gt;&gt;**](List.md) | Gets or sets this action&#39;s supported resource versions. | [optional] [default to {}]
**url** | **String** | The url for this resource | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


