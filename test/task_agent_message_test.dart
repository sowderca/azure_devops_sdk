import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TaskAgentMessage
void main() {
  var instance = TaskAgentMessage();

  group('test TaskAgentMessage', () {
    // Gets or sets the body of the message. If the <c>IV</c> property is provided the body will need to be decrypted using the <c>TaskAgentSession.EncryptionKey</c> value in addition to the <c>IV</c>.
    // String body (default value: null)
    test('to test the property `body`', () async {
      // TODO
    });

    // Gets or sets the initialization vector used to encrypt this message.
    // List<String> iv (default value: [])
    test('to test the property `iv`', () async {
      // TODO
    });

    // Gets or sets the message identifier.
    // int messageId (default value: null)
    test('to test the property `messageId`', () async {
      // TODO
    });

    // Gets or sets the message type, describing the data contract found in <c>TaskAgentMessage.Body</c>.
    // String messageType (default value: null)
    test('to test the property `messageType`', () async {
      // TODO
    });


  });

}
