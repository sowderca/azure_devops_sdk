# azure_devops_sdk.model.Dashboard

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**description** | **String** | Description of the dashboard. | [optional] [default to null]
**eTag** | **String** | Server defined version tracking value, used for edit collision detection. | [optional] [default to null]
**id** | **String** | ID of the Dashboard. Provided by service at creation time. | [optional] [default to null]
**name** | **String** | Name of the Dashboard. | [optional] [default to null]
**ownerId** | **String** | ID of the Owner for a dashboard. For any legacy dashboards, this would be the unique identifier for the team associated with the dashboard. | [optional] [default to null]
**position** | **int** | Position of the dashboard, within a dashboard group. If unset at creation time, position is decided by the service. | [optional] [default to null]
**refreshInterval** | **int** | Interval for client to automatically refresh the dashboard. Expressed in minutes. | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**widgets** | [**List&lt;Widget&gt;**](Widget.md) | The set of Widgets on the dashboard. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


