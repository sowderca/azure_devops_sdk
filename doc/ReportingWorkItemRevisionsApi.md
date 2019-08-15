# azure_devops_sdk.api.ReportingWorkItemRevisionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**read Reporting Revisions Get**](ReportingWorkItemRevisionsApi.md#read Reporting Revisions Get) | **GET** /{organization}/{project}/_apis/wit/reporting/workitemrevisions | 
[**read Reporting Revisions Post**](ReportingWorkItemRevisionsApi.md#read Reporting Revisions Post) | **POST** /{organization}/{project}/_apis/wit/reporting/workitemrevisions | 


# **read Reporting Revisions Get**
> ReportingWorkItemRevisionsBatch read Reporting Revisions Get(organization, project, apiVersion, fields, types, continuationToken, startDateTime, includeIdentityRef, includeDeleted, includeTagRef, includeLatestOnly, $expand, includeDiscussionChangesOnly, $maxPageSize)



Get a batch of work item revisions with the option of including deleted items

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReportingWorkItemRevisionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var fields = fields_example; // String | A list of fields to return in work item revisions. Omit this parameter to get all reportable fields.
var types = types_example; // String | A list of types to filter the results to specific work item types. Omit this parameter to get work item revisions of all work item types.
var continuationToken = continuationToken_example; // String | Specifies the watermark to start the batch from. Omit this parameter to get the first batch of revisions.
var startDateTime = 2013-10-20T19:20:30+01:00; // DateTime | Date/time to use as a starting point for revisions, all revisions will occur after this date/time. Cannot be used in conjunction with 'watermark' parameter.
var includeIdentityRef = true; // bool | Return an identity reference instead of a string value for identity fields.
var includeDeleted = true; // bool | Specify if the deleted item should be returned.
var includeTagRef = true; // bool | Specify if the tag objects should be returned for System.Tags field.
var includeLatestOnly = true; // bool | Return only the latest revisions of work items, skipping all historical revisions
var $expand = $expand_example; // String | Return all the fields in work item revisions, including long text fields which are not returned by default
var includeDiscussionChangesOnly = true; // bool | Return only the those revisions of work items, where only history field was changed
var $maxPageSize = 56; // int | The maximum number of results to return in this batch

try { 
    var result = api_instance.read Reporting Revisions Get(organization, project, apiVersion, fields, types, continuationToken, startDateTime, includeIdentityRef, includeDeleted, includeTagRef, includeLatestOnly, $expand, includeDiscussionChangesOnly, $maxPageSize);
    print(result);
} catch (e) {
    print("Exception when calling ReportingWorkItemRevisionsApi->read Reporting Revisions Get: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **fields** | **String**| A list of fields to return in work item revisions. Omit this parameter to get all reportable fields. | [optional] [default to null]
 **types** | **String**| A list of types to filter the results to specific work item types. Omit this parameter to get work item revisions of all work item types. | [optional] [default to null]
 **continuationToken** | **String**| Specifies the watermark to start the batch from. Omit this parameter to get the first batch of revisions. | [optional] [default to null]
 **startDateTime** | **DateTime**| Date/time to use as a starting point for revisions, all revisions will occur after this date/time. Cannot be used in conjunction with &#39;watermark&#39; parameter. | [optional] [default to null]
 **includeIdentityRef** | **bool**| Return an identity reference instead of a string value for identity fields. | [optional] [default to null]
 **includeDeleted** | **bool**| Specify if the deleted item should be returned. | [optional] [default to null]
 **includeTagRef** | **bool**| Specify if the tag objects should be returned for System.Tags field. | [optional] [default to null]
 **includeLatestOnly** | **bool**| Return only the latest revisions of work items, skipping all historical revisions | [optional] [default to null]
 **$expand** | **String**| Return all the fields in work item revisions, including long text fields which are not returned by default | [optional] [default to null]
 **includeDiscussionChangesOnly** | **bool**| Return only the those revisions of work items, where only history field was changed | [optional] [default to null]
 **$maxPageSize** | **int**| The maximum number of results to return in this batch | [optional] [default to null]

### Return type

[**ReportingWorkItemRevisionsBatch**](ReportingWorkItemRevisionsBatch.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read Reporting Revisions Post**
> ReportingWorkItemRevisionsBatch read Reporting Revisions Post(organization, project, apiVersion, body, continuationToken, startDateTime, $expand)



Get a batch of work item revisions. This request may be used if your list of fields is large enough that it may run the URL over the length limit.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReportingWorkItemRevisionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ReportingWorkItemRevisionsFilter(); // ReportingWorkItemRevisionsFilter | An object that contains request settings: field filter, type filter, identity format
var continuationToken = continuationToken_example; // String | Specifies the watermark to start the batch from. Omit this parameter to get the first batch of revisions.
var startDateTime = 2013-10-20T19:20:30+01:00; // DateTime | Date/time to use as a starting point for revisions, all revisions will occur after this date/time. Cannot be used in conjunction with 'watermark' parameter.
var $expand = $expand_example; // String | 

try { 
    var result = api_instance.read Reporting Revisions Post(organization, project, apiVersion, body, continuationToken, startDateTime, $expand);
    print(result);
} catch (e) {
    print("Exception when calling ReportingWorkItemRevisionsApi->read Reporting Revisions Post: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReportingWorkItemRevisionsFilter**](ReportingWorkItemRevisionsFilter.md)| An object that contains request settings: field filter, type filter, identity format | 
 **continuationToken** | **String**| Specifies the watermark to start the batch from. Omit this parameter to get the first batch of revisions. | [optional] [default to null]
 **startDateTime** | **DateTime**| Date/time to use as a starting point for revisions, all revisions will occur after this date/time. Cannot be used in conjunction with &#39;watermark&#39; parameter. | [optional] [default to null]
 **$expand** | **String**|  | [optional] [default to null]

### Return type

[**ReportingWorkItemRevisionsBatch**](ReportingWorkItemRevisionsBatch.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

