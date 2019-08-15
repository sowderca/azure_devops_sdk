# azure_devops_sdk.api.SubjectLookupApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lookup Subjects**](SubjectLookupApi.md#lookup Subjects) | **POST** /{organization}/_apis/graph/subjectlookup | 


# **lookup Subjects**
> Map<String, GraphSubject> lookup Subjects(organization, apiVersion, body)



Resolve descriptors to users, groups or scopes (Subjects) in a batch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SubjectLookupApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GraphSubjectLookup(); // GraphSubjectLookup | A list of descriptors that specifies a subset of subjects to retrieve. Each descriptor uniquely identifies the subject across all instance scopes, but only at a single point in time.

try { 
    var result = api_instance.lookup Subjects(organization, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling SubjectLookupApi->lookup Subjects: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GraphSubjectLookup**](GraphSubjectLookup.md)| A list of descriptors that specifies a subset of subjects to retrieve. Each descriptor uniquely identifies the subject across all instance scopes, but only at a single point in time. | 

### Return type

[**Map<String, GraphSubject>**](GraphSubject.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

