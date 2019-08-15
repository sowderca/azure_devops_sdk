# azure_devops_sdk.api.CodeCoverageApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Build Code Coverage**](CodeCoverageApi.md#get Build Code Coverage) | **GET** /{organization}/{project}/_apis/test/codecoverage | 
[**get Test Run Code Coverage**](CodeCoverageApi.md#get Test Run Code Coverage) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/codecoverage | 


# **get Build Code Coverage**
> List<BuildCoverage> get Build Code Coverage(organization, project, buildId, flags, apiVersion)



Get code coverage data for a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CodeCoverageApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | ID of the build for which code coverage data needs to be fetched.
var flags = 56; // int | Value of flags determine the level of code coverage details to be fetched. Flags are additive. Expected Values are 1 for Modules, 2 for Functions, 4 for BlockData.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Build Code Coverage(organization, project, buildId, flags, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CodeCoverageApi->get Build Code Coverage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| ID of the build for which code coverage data needs to be fetched. | [default to null]
 **flags** | **int**| Value of flags determine the level of code coverage details to be fetched. Flags are additive. Expected Values are 1 for Modules, 2 for Functions, 4 for BlockData. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<BuildCoverage>**](BuildCoverage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Run Code Coverage**
> List<TestRunCoverage> get Test Run Code Coverage(organization, project, runId, flags, apiVersion)



Get code coverage data for a test run

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CodeCoverageApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run for which code coverage data needs to be fetched.
var flags = 56; // int | Value of flags determine the level of code coverage details to be fetched. Flags are additive. Expected Values are 1 for Modules, 2 for Functions, 4 for BlockData.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Test Run Code Coverage(organization, project, runId, flags, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CodeCoverageApi->get Test Run Code Coverage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run for which code coverage data needs to be fetched. | [default to null]
 **flags** | **int**| Value of flags determine the level of code coverage details to be fetched. Flags are additive. Expected Values are 1 for Modules, 2 for Functions, 4 for BlockData. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<TestRunCoverage>**](TestRunCoverage.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

