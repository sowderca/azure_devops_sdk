# azure_devops_sdk.model.BuildConfiguration

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branchName** | **String** | Branch name for which build is generated. | [optional] [default to null]
**buildDefinitionId** | **int** | BuildDefinitionId for build. | [optional] [default to null]
**buildSystem** | **String** | Build system. | [optional] [default to null]
**creationDate** | [**DateTime**](DateTime.md) | Build Creation Date. | [optional] [default to null]
**flavor** | **String** | Build flavor (eg Build/Release). | [optional] [default to null]
**id** | **int** | BuildConfiguration Id. | [optional] [default to null]
**number** | **String** | Build Number. | [optional] [default to null]
**platform** | **String** | BuildConfiguration Platform. | [optional] [default to null]
**project** | [**ShallowReference**](ShallowReference.md) |  | [optional] [default to null]
**repositoryGuid** | **String** | Repository Guid for the Build. | [optional] [default to null]
**repositoryType** | **String** | Repository Type (eg. TFSGit). | [optional] [default to null]
**sourceVersion** | **String** | Source Version(/first commit) for the build was triggered. | [optional] [default to null]
**targetBranchName** | **String** | Target BranchName. | [optional] [default to null]
**uri** | **String** | Build Uri. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


