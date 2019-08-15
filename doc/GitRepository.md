# azure_devops_sdk.model.GitRepository

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**defaultBranch** | **String** |  | [optional] [default to null]
**id** | **String** |  | [optional] [default to null]
**isFork** | **bool** | True if the repository was created as a fork | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**parentRepository** | [**GitRepositoryRef**](GitRepositoryRef.md) |  | [optional] [default to null]
**project** | [**TeamProjectReference**](TeamProjectReference.md) |  | [optional] [default to null]
**remoteUrl** | **String** |  | [optional] [default to null]
**size** | **int** | Compressed size (bytes) of the repository. | [optional] [default to null]
**sshUrl** | **String** |  | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**validRemoteUrls** | **List&lt;String&gt;** |  | [optional] [default to []]
**webUrl** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


