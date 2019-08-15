# azure_devops_sdk.model.PackageMetadata

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdOn** | [**DateTime**](DateTime.md) | The date the package was created | [optional] [default to null]
**downloadUrl** | **String** | A direct link to download the package. | [optional] [default to null]
**filename** | **String** | The UI uses this to display instructions, i.e. \&quot;unzip MyAgent.zip\&quot; | [optional] [default to null]
**hashValue** | **String** | MD5 hash as a base64 string | [optional] [default to null]
**infoUrl** | **String** | A link to documentation | [optional] [default to null]
**platform** | **String** | The platform (win7, linux, etc.) | [optional] [default to null]
**type** | **String** | The type of package (e.g. \&quot;agent\&quot;) | [optional] [default to null]
**version** | [**PackageVersion**](PackageVersion.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


