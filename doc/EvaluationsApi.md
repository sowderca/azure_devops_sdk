# azure_devops_sdk.api.EvaluationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](EvaluationsApi.md#callGet) | **GET** /{organization}/{project}/_apis/policy/evaluations/{evaluationId} | 
[**list**](EvaluationsApi.md#list) | **GET** /{organization}/{project}/_apis/policy/evaluations | 
[**requeue Policy Evaluation**](EvaluationsApi.md#requeue Policy Evaluation) | **PATCH** /{organization}/{project}/_apis/policy/evaluations/{evaluationId} | 


# **callGet**
> PolicyEvaluationRecord callGet(organization, project, evaluationId, apiVersion)



Gets the present evaluation state of a policy.  Each policy which applies to a pull request will have an evaluation state which is specific to that policy running in the context of that pull request. Each evaluation is uniquely identified via a Guid. You can find all the policy evaluations for a specific pull request using the List operation of this controller.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EvaluationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var evaluationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the policy evaluation to be retrieved.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, evaluationId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling EvaluationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **evaluationId** | [**String**](.md)| ID of the policy evaluation to be retrieved. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**PolicyEvaluationRecord**](PolicyEvaluationRecord.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<PolicyEvaluationRecord> list(organization, project, artifactId, apiVersion, includeNotApplicable, $top, $skip)



Retrieves a list of all the policy evaluation statuses for a specific pull request.  Evaluations are retrieved using an artifact ID which uniquely identifies the pull request. To generate an artifact ID for a pull request, use this template: ``` vstfs:///CodeReview/CodeReviewId/{projectId}/{pullRequestId} ```

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EvaluationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var artifactId = artifactId_example; // String | A string which uniquely identifies the target of a policy evaluation.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var includeNotApplicable = true; // bool | Some policies might determine that they do not apply to a specific pull request. Setting this parameter to true will return evaluation records even for policies which don't apply to this pull request.
var $top = 56; // int | The number of policy evaluation records to retrieve.
var $skip = 56; // int | The number of policy evaluation records to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100.

try { 
    var result = api_instance.list(organization, project, artifactId, apiVersion, includeNotApplicable, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling EvaluationsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **artifactId** | **String**| A string which uniquely identifies the target of a policy evaluation. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **includeNotApplicable** | **bool**| Some policies might determine that they do not apply to a specific pull request. Setting this parameter to true will return evaluation records even for policies which don&#39;t apply to this pull request. | [optional] [default to null]
 **$top** | **int**| The number of policy evaluation records to retrieve. | [optional] [default to null]
 **$skip** | **int**| The number of policy evaluation records to ignore. For example, to retrieve results 101-150, set top to 50 and skip to 100. | [optional] [default to null]

### Return type

[**List<PolicyEvaluationRecord>**](PolicyEvaluationRecord.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requeue Policy Evaluation**
> PolicyEvaluationRecord requeue Policy Evaluation(organization, project, evaluationId, apiVersion)



Requeue the policy evaluation.  Some policies define a \"requeue\" action which performs some policy-specific operation. You can trigger this operation by updating an existing policy evaluation and setting the PolicyEvaluationRecord.Status field to Queued. Although any policy evaluation can be requeued, at present only build policies perform any action in response. Requeueing a build policy will queue a new build to run (cancelling any existing build which is running).

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EvaluationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var evaluationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the policy evaluation to be retrieved.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.requeue Policy Evaluation(organization, project, evaluationId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling EvaluationsApi->requeue Policy Evaluation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **evaluationId** | [**String**](.md)| ID of the policy evaluation to be retrieved. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**PolicyEvaluationRecord**](PolicyEvaluationRecord.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

