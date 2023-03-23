import 'package:shorebird_code_push_protocol/shorebird_code_push_protocol.dart';
import 'package:test/test.dart';

void main() {
  group('Artifact', () {
    test('can be (de)serialized', () {
      const artifact = Artifact(
        id: 1,
        patchId: 1,
        arch: 'aarch64',
        platform: 'android',
        url: 'https://example.com',
        hash: 'sha256:1234567890',
      );
      expect(
        Artifact.fromJson(artifact.toJson()).toJson(),
        equals(artifact.toJson()),
      );
    });
  });
}