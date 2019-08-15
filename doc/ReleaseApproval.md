# azure_devops_sdk.model.ReleaseApproval

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approvalType** | **String** | Gets or sets the type of approval. | [optional] [default to null]
**approvedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**approver** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**attempt** | **int** | Gets or sets attempt which specifies as which deployment attempt it belongs. | [optional] [default to null]
**comments** | **String** | Gets or sets comments for approval. | [optional] [default to null]
**createdOn** | [**DateTime**](DateTime.md) | Gets date on which it got created. | [optional] [default to null]
**history** | [**List&lt;ReleaseApprovalHistory&gt;**](ReleaseApprovalHistory.md) | Gets history which specifies all approvals associated with this approval. | [optional] [default to []]
**id** | **int** | Gets the unique identifier of this field. | [optional] [default to null]
**isAutomated** | **bool** | Gets or sets as approval is automated or not. | [optional] [default to null]
**modifiedOn** | [**DateTime**](DateTime.md) | Gets date on which it got modified. | [optional] [default to null]
**rank** | **int** | Gets or sets rank which specifies the order of the approval. e.g. Same rank denotes parallel approval. | [optional] [default to null]
**release** | [**ReleaseShallowReference**](ReleaseShallowReference.md) |  | [optional] [default to null]
**releaseDefinition** | [**ReleaseDefinitionShallowReference**](ReleaseDefinitionShallowReference.md) |  | [optional] [default to null]
**releaseEnvironment** | [**ReleaseEnvironmentShallowReference**](ReleaseEnvironmentShallowReference.md) |  | [optional] [default to null]
**revision** | **int** | Gets the revision number. | [optional] [default to null]
**status** | **String** | Gets or sets the status of the approval. | [optional] [default to null]
**url** | **String** | Gets url to access the approval. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


