# azure_devops_sdk.model.CardFieldSettings

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additionalFields** | [**List&lt;FieldInfo&gt;**](FieldInfo.md) | A collection of field information of additional fields on cards. The index in the collection signifies the order of the field among the additional fields. Currently unused. Should be used with User Story 691539: Card setting: additional fields | [optional] [default to []]
**assignedToDisplayFormat** | **String** | Display format for the assigned to field | [optional] [default to null]
**coreFields** | [**List&lt;FieldInfo&gt;**](FieldInfo.md) | A collection of field information of rendered core fields on cards. | [optional] [default to []]
**showAssignedTo** | **bool** | Flag indicating whether to show assigned to field on cards. When true, AssignedToDisplayFormat will determine how the field will be displayed | [optional] [default to null]
**showEmptyFields** | **bool** | Flag indicating whether to show empty fields on cards | [optional] [default to null]
**showId** | **bool** | Flag indicating whether to show ID on cards | [optional] [default to null]
**showState** | **bool** | Flag indicating whether to show state field on cards | [optional] [default to null]
**showTags** | **bool** | Flag indicating whether to show tags on cards | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


