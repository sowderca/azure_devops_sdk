# azure_devops_sdk.api.GatesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update**](GatesApi.md#update) | **PATCH** /{organization}/{project}/_apis/release/gates/{gateStepId} | 


# **update**
> ReleaseGates update(organization, project, gateStepId, apiVersion, body)



Updates the gate for a deployment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GatesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var gateStepId = 56; // int | Gate step Id.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GateUpdateMetadata(); // GateUpdateMetadata | Metadata to patch the Release Gates.

try { 
    var result = api_instance.update(organization, project, gateStepId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling GatesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **gateStepId** | **int**| Gate step Id. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GateUpdateMetadata**](GateUpdateMetadata.md)| Metadata to patch the Release Gates. | 

### Return type

[**ReleaseGates**](ReleaseGates.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

