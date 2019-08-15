# azure_devops_sdk.api.DeploymentsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](DeploymentsApi.md#list) | **GET** /{organization}/{project}/_apis/release/deployments | 


# **list**
> List<Deployment> list(organization, project, apiVersion, definitionId, definitionEnvironmentId, createdBy, minModifiedTime, maxModifiedTime, deploymentStatus, operationStatus, latestAttemptsOnly, queryOrder, $top, continuationToken, createdFor, minStartedTime, maxStartedTime, sourceBranch)



### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DeploymentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var definitionId = 56; // int | 
var definitionEnvironmentId = 56; // int | 
var createdBy = createdBy_example; // String | 
var minModifiedTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var maxModifiedTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var deploymentStatus = deploymentStatus_example; // String | 
var operationStatus = operationStatus_example; // String | 
var latestAttemptsOnly = true; // bool | 
var queryOrder = queryOrder_example; // String | 
var $top = 56; // int | 
var continuationToken = 56; // int | 
var createdFor = createdFor_example; // String | 
var minStartedTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var maxStartedTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var sourceBranch = sourceBranch_example; // String | 

try { 
    var result = api_instance.list(organization, project, apiVersion, definitionId, definitionEnvironmentId, createdBy, minModifiedTime, maxModifiedTime, deploymentStatus, operationStatus, latestAttemptsOnly, queryOrder, $top, continuationToken, createdFor, minStartedTime, maxStartedTime, sourceBranch);
    print(result);
} catch (e) {
    print("Exception when calling DeploymentsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **definitionId** | **int**|  | [optional] [default to null]
 **definitionEnvironmentId** | **int**|  | [optional] [default to null]
 **createdBy** | **String**|  | [optional] [default to null]
 **minModifiedTime** | **DateTime**|  | [optional] [default to null]
 **maxModifiedTime** | **DateTime**|  | [optional] [default to null]
 **deploymentStatus** | **String**|  | [optional] [default to null]
 **operationStatus** | **String**|  | [optional] [default to null]
 **latestAttemptsOnly** | **bool**|  | [optional] [default to null]
 **queryOrder** | **String**|  | [optional] [default to null]
 **$top** | **int**|  | [optional] [default to null]
 **continuationToken** | **int**|  | [optional] [default to null]
 **createdFor** | **String**|  | [optional] [default to null]
 **minStartedTime** | **DateTime**|  | [optional] [default to null]
 **maxStartedTime** | **DateTime**|  | [optional] [default to null]
 **sourceBranch** | **String**|  | [optional] [default to null]

### Return type

[**List<Deployment>**](Deployment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

