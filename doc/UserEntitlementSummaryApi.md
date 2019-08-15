# azure_devops_sdk.api.UserEntitlementSummaryApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](UserEntitlementSummaryApi.md#callGet) | **GET** /{organization}/_apis/userentitlementsummary | 


# **callGet**
> UsersSummary callGet(organization, apiVersion, select)



Get summary of Licenses, Extension, Projects, Groups and their assignments in the collection.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = UserEntitlementSummaryApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var select = select_example; // String | Comma (\",\") separated list of properties to select. Supported property names are {AccessLevels, Licenses, Extensions, Projects, Groups}.

try { 
    var result = api_instance.callGet(organization, apiVersion, select);
    print(result);
} catch (e) {
    print("Exception when calling UserEntitlementSummaryApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **select** | **String**| Comma (\&quot;,\&quot;) separated list of properties to select. Supported property names are {AccessLevels, Licenses, Extensions, Projects, Groups}. | [optional] [default to null]

### Return type

[**UsersSummary**](UsersSummary.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
