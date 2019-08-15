# azure_devops_sdk.api.TestSuiteEntryApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TestSuiteEntryApi.md#list) | **GET** /{organization}/{project}/_apis/testplan/suiteentry/{suiteId} | 
[**reorder Suite Entries**](TestSuiteEntryApi.md#reorder Suite Entries) | **PATCH** /{organization}/{project}/_apis/testplan/suiteentry/{suiteId} | 


# **list**
> List<SuiteEntry> list(organization, project, suiteId, apiVersion, suiteEntryType)



Get a list of test suite entries in the test suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuiteEntryApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var suiteId = 56; // int | Id of the parent suite.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var suiteEntryType = suiteEntryType_example; // String | 

try { 
    var result = api_instance.list(organization, project, suiteId, apiVersion, suiteEntryType);
    print(result);
} catch (e) {
    print("Exception when calling TestSuiteEntryApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **suiteId** | **int**| Id of the parent suite. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **suiteEntryType** | **String**|  | [optional] [default to null]

### Return type

[**List<SuiteEntry>**](SuiteEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reorder Suite Entries**
> List<SuiteEntry> reorder Suite Entries(organization, project, suiteId, apiVersion, body)



Reorder test suite entries in the test suite.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestSuiteEntryApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var suiteId = 56; // int | Id of the parent test suite.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = [List&lt;SuiteEntryUpdateParams&gt;()]; // List<SuiteEntryUpdateParams> | List of SuiteEntry to reorder.

try { 
    var result = api_instance.reorder Suite Entries(organization, project, suiteId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestSuiteEntryApi->reorder Suite Entries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **suiteId** | **int**| Id of the parent test suite. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**List&lt;SuiteEntryUpdateParams&gt;**](SuiteEntryUpdateParams.md)| List of SuiteEntry to reorder. | 

### Return type

[**List<SuiteEntry>**](SuiteEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

