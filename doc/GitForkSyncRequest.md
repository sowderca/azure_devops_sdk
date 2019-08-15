# azure_devops_sdk.model.GitForkSyncRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**detailedStatus** | [**GitForkOperationStatusDetail**](GitForkOperationStatusDetail.md) |  | [optional] [default to null]
**operationId** | **int** | Unique identifier for the operation. | [optional] [default to null]
**source** | [**GlobalGitRepositoryKey**](GlobalGitRepositoryKey.md) |  | [optional] [default to null]
**sourceToTargetRefs** | [**List&lt;SourceToTargetRef&gt;**](SourceToTargetRef.md) | If supplied, the set of ref mappings to use when performing a \&quot;sync\&quot; or create. If missing, all refs will be synchronized. | [optional] [default to []]
**status** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


