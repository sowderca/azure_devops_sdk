# azure_devops_sdk.api.TestHistoryApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](TestHistoryApi.md#query) | **POST** /{organization}/{project}/_apis/test/Results/testhistory | 


# **query**
> TestHistoryQuery query(organization, project, apiVersion, body)



Get history of a test method using TestHistoryQuery

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TestHistoryApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = TestHistoryQuery(); // TestHistoryQuery | TestHistoryQuery to get history

try { 
    var result = api_instance.query(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TestHistoryApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**TestHistoryQuery**](TestHistoryQuery.md)| TestHistoryQuery to get history | 

### Return type

[**TestHistoryQuery**](TestHistoryQuery.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

