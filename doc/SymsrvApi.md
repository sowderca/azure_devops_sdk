# azure_devops_sdk.api.SymsrvApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](SymsrvApi.md#callGet) | **GET** /{organization}/_apis/symbol/symsrv/{debugEntryClientKey} | 


# **callGet**
> callGet(organization, debugEntryClientKey, apiVersion)



Given a client key, returns the best matched debug entry.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = SymsrvApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var debugEntryClientKey = debugEntryClientKey_example; // String | A \"client key\" used by both ends of Microsoft's symbol protocol to identify a debug entry. The semantics of client key is governed by symsrv and is beyond the scope of this documentation.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.callGet(organization, debugEntryClientKey, apiVersion);
} catch (e) {
    print("Exception when calling SymsrvApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **debugEntryClientKey** | **String**| A \&quot;client key\&quot; used by both ends of Microsoft&#39;s symbol protocol to identify a debug entry. The semantics of client key is governed by symsrv and is beyond the scope of this documentation. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

