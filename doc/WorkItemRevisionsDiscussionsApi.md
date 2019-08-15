# azure_devops_sdk.api.WorkItemRevisionsDiscussionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**read Reporting Discussions**](WorkItemRevisionsDiscussionsApi.md#read Reporting Discussions) | **GET** /{organization}/{project}/_apis/wit/reporting/workItemRevisions/discussions | 


# **read Reporting Discussions**
> ReportingWorkItemRevisionsBatch read Reporting Discussions(organization, project, apiVersion, continuationToken, $maxPageSize)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkItemRevisionsDiscussionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var continuationToken = continuationToken_example; // String | 
var $maxPageSize = 56; // int | 

try { 
    var result = api_instance.read Reporting Discussions(organization, project, apiVersion, continuationToken, $maxPageSize);
    print(result);
} catch (e) {
    print("Exception when calling WorkItemRevisionsDiscussionsApi->read Reporting Discussions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **continuationToken** | **String**|  | [optional] [default to null]
 **$maxPageSize** | **int**|  | [optional] [default to null]

### Return type

[**ReportingWorkItemRevisionsBatch**](ReportingWorkItemRevisionsBatch.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
