# azure_devops_sdk.model.DeploymentApprovalPendingEvent

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval** | [**ReleaseApproval**](ReleaseApproval.md) |  | [optional] [default to null]
**approvalOptions** | [**ApprovalOptions**](ApprovalOptions.md) |  | [optional] [default to null]
**completedApprovals** | [**List&lt;ReleaseApproval&gt;**](ReleaseApproval.md) |  | [optional] [default to []]
**data** | [**Map&lt;String, Object&gt;**](Object.md) |  | [optional] [default to {}]
**deployment** | [**Deployment**](Deployment.md) |  | [optional] [default to null]
**isMultipleRankApproval** | **bool** |  | [optional] [default to null]
**pendingApprovals** | [**List&lt;ReleaseApproval&gt;**](ReleaseApproval.md) |  | [optional] [default to []]
**project** | [**ProjectReference**](ProjectReference.md) |  | [optional] [default to null]
**release** | [**Release**](Release.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


