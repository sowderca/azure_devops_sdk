# azure_devops_sdk.api.ReportingWorkItemLinksApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ReportingWorkItemLinksApi.md#callGet) | **GET** /{organization}/{project}/_apis/wit/reporting/workitemlinks | 


# **callGet**
> ReportingWorkItemLinksBatch callGet(organization, project, apiVersion, linkTypes, types, continuationToken, startDateTime)



Get a batch of work item links

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReportingWorkItemLinksApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var linkTypes = linkTypes_example; // String | A list of types to filter the results to specific link types. Omit this parameter to get work item links of all link types.
var types = types_example; // String | A list of types to filter the results to specific work item types. Omit this parameter to get work item links of all work item types.
var continuationToken = continuationToken_example; // String | Specifies the continuationToken to start the batch from. Omit this parameter to get the first batch of links.
var startDateTime = 2013-10-20T19:20:30+01:00; // DateTime | Date/time to use as a starting point for link changes. Only link changes that occurred after that date/time will be returned. Cannot be used in conjunction with 'watermark' parameter.

try { 
    var result = api_instance.callGet(organization, project, apiVersion, linkTypes, types, continuationToken, startDateTime);
    print(result);
} catch (e) {
    print("Exception when calling ReportingWorkItemLinksApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **linkTypes** | **String**| A list of types to filter the results to specific link types. Omit this parameter to get work item links of all link types. | [optional] [default to null]
 **types** | **String**| A list of types to filter the results to specific work item types. Omit this parameter to get work item links of all work item types. | [optional] [default to null]
 **continuationToken** | **String**| Specifies the continuationToken to start the batch from. Omit this parameter to get the first batch of links. | [optional] [default to null]
 **startDateTime** | **DateTime**| Date/time to use as a starting point for link changes. Only link changes that occurred after that date/time will be returned. Cannot be used in conjunction with &#39;watermark&#39; parameter. | [optional] [default to null]

### Return type

[**ReportingWorkItemLinksBatch**](ReportingWorkItemLinksBatch.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

