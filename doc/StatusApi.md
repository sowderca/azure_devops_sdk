# azure_devops_sdk.api.StatusApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](StatusApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/status/{definition} | 


# **callGet**
> String callGet(organization, project, definition, apiVersion, branchName, stageName, jobName, configuration, label)



<p>Gets the build status for a definition, optionally scoped to a specific branch, stage, job, and configuration.</p> <p>If there are more than one, then it is required to pass in a stageName value when specifying a jobName, and the same rule then applies for both if passing a configuration parameter.</p>

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = StatusApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definition = definition_example; // String | Either the definition name with optional leading folder path, or the definition id.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var branchName = branchName_example; // String | Only consider the most recent build for this branch.
var stageName = stageName_example; // String | Use this stage within the pipeline to render the status.
var jobName = jobName_example; // String | Use this job within a stage of the pipeline to render the status.
var configuration = configuration_example; // String | Use this job configuration to render the status
var label = label_example; // String | Replaces the default text on the left side of the badge.

try { 
    var result = api_instance.callGet(organization, project, definition, apiVersion, branchName, stageName, jobName, configuration, label);
    print(result);
} catch (e) {
    print("Exception when calling StatusApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definition** | **String**| Either the definition name with optional leading folder path, or the definition id. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **branchName** | **String**| Only consider the most recent build for this branch. | [optional] [default to null]
 **stageName** | **String**| Use this stage within the pipeline to render the status. | [optional] [default to null]
 **jobName** | **String**| Use this job within a stage of the pipeline to render the status. | [optional] [default to null]
 **configuration** | **String**| Use this job configuration to render the status | [optional] [default to null]
 **label** | **String**| Replaces the default text on the left side of the badge. | [optional] [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

