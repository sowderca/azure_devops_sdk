# azure_devops_sdk.model.Provenance

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Map&lt;String, String&gt;** | Other provenance data. | [optional] [default to {}]
**provenanceSource** | **String** | Type of provenance source, for example \&quot;InternalBuild\&quot;, \&quot;InternalRelease\&quot; | [optional] [default to null]
**publisherUserIdentity** | **String** | Identity of user that published the package | [optional] [default to null]
**userAgent** | **String** | HTTP User-Agent used when pushing the package. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


