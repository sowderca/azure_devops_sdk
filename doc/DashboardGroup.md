# azure_devops_sdk.model.DashboardGroup

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**dashboardEntries** | [**List&lt;DashboardGroupEntry&gt;**](DashboardGroupEntry.md) | A list of Dashboards held by the Dashboard Group | [optional] [default to []]
**permission** | **String** | Deprecated: The old permission model describing the level of permissions for the current team. Pre-M125. | [optional] [default to null]
**teamDashboardPermission** | **String** | A permissions bit mask describing the security permissions of the current team for dashboards. When this permission is the value None, use GroupMemberPermission. Permissions are evaluated based on the presence of a value other than None, else the GroupMemberPermission will be saved. | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


