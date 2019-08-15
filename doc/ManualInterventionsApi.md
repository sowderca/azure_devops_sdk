# azure_devops_sdk.api.ManualInterventionsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ManualInterventionsApi.md#callGet) | **GET** /{organization}/{project}/_apis/Release/releases/{releaseId}/manualinterventions/{manualInterventionId} | 
[**list**](ManualInterventionsApi.md#list) | **GET** /{organization}/{project}/_apis/Release/releases/{releaseId}/manualinterventions | 
[**update**](ManualInterventionsApi.md#update) | **PATCH** /{organization}/{project}/_apis/Release/releases/{releaseId}/manualinterventions/{manualInterventionId} | 


# **callGet**
> ManualIntervention callGet(organization, project, releaseId, manualInterventionId, apiVersion)



Get manual intervention for a given release and manual intervention id.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ManualInterventionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var manualInterventionId = 56; // int | Id of the manual intervention.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, releaseId, manualInterventionId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ManualInterventionsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **manualInterventionId** | **int**| Id of the manual intervention. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**ManualIntervention**](ManualIntervention.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<ManualIntervention> list(organization, project, releaseId, apiVersion)



List all manual interventions for a given release.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ManualInterventionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, releaseId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ManualInterventionsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<ManualIntervention>**](ManualIntervention.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> ManualIntervention update(organization, project, releaseId, manualInterventionId, apiVersion, body)



Update manual intervention.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ManualInterventionsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var manualInterventionId = 56; // int | Id of the manual intervention.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = ManualInterventionUpdateMetadata(); // ManualInterventionUpdateMetadata | Meta data to update manual intervention.

try { 
    var result = api_instance.update(organization, project, releaseId, manualInterventionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ManualInterventionsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **manualInterventionId** | **int**| Id of the manual intervention. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**ManualInterventionUpdateMetadata**](ManualInterventionUpdateMetadata.md)| Meta data to update manual intervention. | 

### Return type

[**ManualIntervention**](ManualIntervention.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

