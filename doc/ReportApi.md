# azure_devops_sdk.api.ReportApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ReportApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/report | 


# **callGet**
> BuildReportMetadata callGet(organization, project, buildId, apiVersion, type)



Gets a build report.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ReportApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var type = type_example; // String | 

try { 
    var result = api_instance.callGet(organization, project, buildId, apiVersion, type);
    print(result);
} catch (e) {
    print("Exception when calling ReportApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **type** | **String**|  | [optional] [default to null]

### Return type

[**BuildReportMetadata**](BuildReportMetadata.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

