# azure_devops_sdk.model.Package

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**id** | **String** | Id of the package. | [optional] [default to null]
**isCached** | **bool** | Used for legacy scenarios and may be removed in future versions. | [optional] [default to null]
**name** | **String** | The display name of the package. | [optional] [default to null]
**normalizedName** | **String** | The normalized name representing the identity of this package within its package type. | [optional] [default to null]
**protocolType** | **String** | Type of the package. | [optional] [default to null]
**starCount** | **int** | [Obsolete] - this field is unused and will be removed in a future release. | [optional] [default to null]
**url** | **String** | Url for this package. | [optional] [default to null]
**versions** | [**List&lt;MinimalPackageVersion&gt;**](MinimalPackageVersion.md) | All versions for this package within its feed. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


