# azure_devops_sdk.model.MinimalPackageVersion

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**directUpstreamSourceId** | **String** | Upstream source this package was ingested from. | [optional] [default to null]
**id** | **String** | Id for the package. | [optional] [default to null]
**isCachedVersion** | **bool** | [Obsolete] Used for legacy scenarios and may be removed in future versions. | [optional] [default to null]
**isDeleted** | **bool** | True if this package has been deleted. | [optional] [default to null]
**isLatest** | **bool** | True if this is the latest version of the package by package type sort order. | [optional] [default to null]
**isListed** | **bool** | (NuGet Only) True if this package is listed. | [optional] [default to null]
**normalizedVersion** | **String** | Normalized version using normalization rules specific to a package type. | [optional] [default to null]
**packageDescription** | **String** | Package description. | [optional] [default to null]
**publishDate** | [**DateTime**](DateTime.md) | UTC Date the package was published to the service. | [optional] [default to null]
**storageId** | **String** | Internal storage id. | [optional] [default to null]
**version** | **String** | Display version. | [optional] [default to null]
**views** | [**List&lt;FeedView&gt;**](FeedView.md) | List of views containing this package version. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


