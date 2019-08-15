# azure_devops_sdk.model.Artifact

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alias** | **String** | Gets or sets alias. | [optional] [default to null]
**definitionReference** | [**Map&lt;String, ArtifactSourceReference&gt;**](ArtifactSourceReference.md) | Gets or sets definition reference. e.g. {\&quot;project\&quot;:{\&quot;id\&quot;:\&quot;fed755ea-49c5-4399-acea-fd5b5aa90a6c\&quot;,\&quot;name\&quot;:\&quot;myProject\&quot;},\&quot;definition\&quot;:{\&quot;id\&quot;:\&quot;1\&quot;,\&quot;name\&quot;:\&quot;mybuildDefinition\&quot;},\&quot;connection\&quot;:{\&quot;id\&quot;:\&quot;1\&quot;,\&quot;name\&quot;:\&quot;myConnection\&quot;}}. | [optional] [default to {}]
**isPrimary** | **bool** | Indicates whether artifact is primary or not. | [optional] [default to null]
**isRetained** | **bool** | Indicates whether artifact is retained by release or not. | [optional] [default to null]
**type** | **String** | Gets or sets type. It can have value as &#39;Build&#39;, &#39;Jenkins&#39;, &#39;GitHub&#39;, &#39;Nuget&#39;, &#39;Team Build (external)&#39;, &#39;ExternalTFSBuild&#39;, &#39;Git&#39;, &#39;TFVC&#39;, &#39;ExternalTfsXamlBuild&#39;. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


