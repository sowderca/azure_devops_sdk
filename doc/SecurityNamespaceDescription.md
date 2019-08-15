# azure_devops_sdk.model.SecurityNamespaceDescription

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**List&lt;ActionDefinition&gt;**](ActionDefinition.md) | The list of actions that this Security Namespace is responsible for securing. | [optional] [default to []]
**dataspaceCategory** | **String** | This is the dataspace category that describes where the security information for this SecurityNamespace should be stored. | [optional] [default to null]
**displayName** | **String** | This localized name for this namespace. | [optional] [default to null]
**elementLength** | **int** | If the security tokens this namespace will be operating on need to be split on certain character lengths to determine its elements, that length should be specified here. If not, this value will be -1. | [optional] [default to null]
**extensionType** | **String** | This is the type of the extension that should be loaded from the plugins directory for extending this security namespace. | [optional] [default to null]
**isRemotable** | **bool** | If true, the security namespace is remotable, allowing another service to proxy the namespace. | [optional] [default to null]
**name** | **String** | This non-localized for this namespace. | [optional] [default to null]
**namespaceId** | **String** | The unique identifier for this namespace. | [optional] [default to null]
**readPermission** | **int** | The permission bits needed by a user in order to read security data on the Security Namespace. | [optional] [default to null]
**separatorValue** | **String** | If the security tokens this namespace will be operating on need to be split on certain characters to determine its elements that character should be specified here. If not, this value will be the null character. | [optional] [default to null]
**structureValue** | **int** | Used to send information about the structure of the security namespace over the web service. | [optional] [default to null]
**systemBitMask** | **int** | The bits reserved by system store | [optional] [default to null]
**useTokenTranslator** | **bool** | If true, the security service will expect an ISecurityDataspaceTokenTranslator plugin to exist for this namespace | [optional] [default to null]
**writePermission** | **int** | The permission bits needed by a user in order to modify security data on the Security Namespace. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


