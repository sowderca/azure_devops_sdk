# azure_devops_sdk.api.PolicyConfigurationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](PolicyConfigurationsApi.md#callGet) | **GET** /{organization}/{project}/_apis/git/policy/configurations | 


# **callGet**
> List<PolicyConfiguration> callGet(organization, project, apiVersion, repositoryId, refName, policyType, $top, continuationToken)



Retrieve a list of policy configurations by a given set of scope/filtering criteria.  Below is a short description of how all of the query parameters interact with each other: - repositoryId set, refName set: returns all policy configurations that *apply* to a particular branch in a repository - repositoryId set, refName unset: returns all policy configurations that *apply* to a particular repository - repositoryId unset, refName unset: returns all policy configurations that are *defined* at the project level - repositoryId unset, refName set: returns all project-level branch policies, plus the project level configurations For all of the examples above, when policyType is set, it'll restrict results to the given policy type

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PolicyConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var repositoryId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The repository id.
var refName = refName_example; // String | The fully-qualified Git ref name (e.g. refs/heads/master).
var policyType = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The policy type filter.
var $top = 56; // int | Maximum number of policies to return.
var continuationToken = continuationToken_example; // String | Pass a policy configuration ID to fetch the next page of results, up to top number of results, for this endpoint.

try { 
    var result = api_instance.callGet(organization, project, apiVersion, repositoryId, refName, policyType, $top, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling PolicyConfigurationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **repositoryId** | [**String**](.md)| The repository id. | [optional] [default to null]
 **refName** | **String**| The fully-qualified Git ref name (e.g. refs/heads/master). | [optional] [default to null]
 **policyType** | [**String**](.md)| The policy type filter. | [optional] [default to null]
 **$top** | **int**| Maximum number of policies to return. | [optional] [default to null]
 **continuationToken** | **String**| Pass a policy configuration ID to fetch the next page of results, up to top number of results, for this endpoint. | [optional] [default to null]

### Return type

[**List<PolicyConfiguration>**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

