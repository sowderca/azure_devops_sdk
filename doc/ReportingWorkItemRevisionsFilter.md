# azure_devops_sdk.model.ReportingWorkItemRevisionsFilter

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fields** | **List&lt;String&gt;** | A list of fields to return in work item revisions. Omit this parameter to get all reportable fields. | [optional] [default to []]
**includeDeleted** | **bool** | Include deleted work item in the result. | [optional] [default to null]
**includeIdentityRef** | **bool** | Return an identity reference instead of a string value for identity fields. | [optional] [default to null]
**includeLatestOnly** | **bool** | Include only the latest version of a work item, skipping over all previous revisions of the work item. | [optional] [default to null]
**includeTagRef** | **bool** | Include tag reference instead of string value for System.Tags field | [optional] [default to null]
**types** | **List&lt;String&gt;** | A list of types to filter the results to specific work item types. Omit this parameter to get work item revisions of all work item types. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


