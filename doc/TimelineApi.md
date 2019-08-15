# azure_devops_sdk.api.TimelineApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TimelineApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/timeline/{timelineId} | 


# **callGet**
> Timeline callGet(organization, project, buildId, timelineId, apiVersion, changeId, planId)



Gets details for a build

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TimelineApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | 
var timelineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var changeId = 56; // int | 
var planId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    var result = api_instance.callGet(organization, project, buildId, timelineId, apiVersion, changeId, planId);
    print(result);
} catch (e) {
    print("Exception when calling TimelineApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**|  | [default to null]
 **timelineId** | [**String**](.md)|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **changeId** | **int**|  | [optional] [default to null]
 **planId** | [**String**](.md)|  | [optional] [default to null]

### Return type

[**Timeline**](Timeline.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

