---
title: tools.ozone.verification.defs
description: Reference for the tools.ozone.verification.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="verificationview"></a>
### `verificationView`

**Type:** `object`

Verification data for the associated subject.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `issuer` | `string` | ✅  | The user who issued this verification. | Format: `did` |
| `uri` | `string` | ✅  | The AT-URI of the verification record. | Format: `at-uri` |
| `subject` | `string` | ✅  | The subject of the verification. | Format: `did` |
| `handle` | `string` | ✅  | Handle of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current handle matches the one at the time of verifying. | Format: `handle` |
| `displayName` | `string` | ✅  | Display name of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current displayName matches the one at the time of verifying. |  |
| `createdAt` | `string` | ✅  | Timestamp when the verification was created. | Format: `datetime` |
| `revokeReason` | `string` | ❌  | Describes the reason for revocation, also indicating that the verification is no longer valid. |  |
| `revokedAt` | `string` | ❌  | Timestamp when the verification was revoked. | Format: `datetime` |
| `revokedBy` | `string` | ❌  | The user who revoked this verification. | Format: `did` |
| `subjectProfile` | Union of:<br/>&nbsp;&nbsp; | ❌  |  |  |
| `issuerProfile` | Union of:<br/>&nbsp;&nbsp; | ❌  |  |  |
| `subjectRepo` | Union of:<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#repoViewDetail`](/tools/ozone/moderation/defs#repoViewDetail)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#repoViewNotFound`](/tools/ozone/moderation/defs#repoViewNotFound) | ❌  |  |  |
| `issuerRepo` | Union of:<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#repoViewDetail`](/tools/ozone/moderation/defs#repoViewDetail)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#repoViewNotFound`](/tools/ozone/moderation/defs#repoViewNotFound) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.verification.defs",
  "defs": {
    "verificationView": {
      "type": "object",
      "description": "Verification data for the associated subject.",
      "required": [
        "issuer",
        "uri",
        "subject",
        "handle",
        "displayName",
        "createdAt"
      ],
      "properties": {
        "issuer": {
          "type": "string",
          "description": "The user who issued this verification.",
          "format": "did"
        },
        "uri": {
          "type": "string",
          "description": "The AT-URI of the verification record.",
          "format": "at-uri"
        },
        "subject": {
          "type": "string",
          "format": "did",
          "description": "The subject of the verification."
        },
        "handle": {
          "type": "string",
          "description": "Handle of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current handle matches the one at the time of verifying.",
          "format": "handle"
        },
        "displayName": {
          "type": "string",
          "description": "Display name of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current displayName matches the one at the time of verifying."
        },
        "createdAt": {
          "type": "string",
          "description": "Timestamp when the verification was created.",
          "format": "datetime"
        },
        "revokeReason": {
          "type": "string",
          "description": "Describes the reason for revocation, also indicating that the verification is no longer valid."
        },
        "revokedAt": {
          "type": "string",
          "description": "Timestamp when the verification was revoked.",
          "format": "datetime"
        },
        "revokedBy": {
          "type": "string",
          "description": "The user who revoked this verification.",
          "format": "did"
        },
        "subjectProfile": {
          "type": "union",
          "refs": []
        },
        "issuerProfile": {
          "type": "union",
          "refs": []
        },
        "subjectRepo": {
          "type": "union",
          "refs": [
            "tools.ozone.moderation.defs#repoViewDetail",
            "tools.ozone.moderation.defs#repoViewNotFound"
          ]
        },
        "issuerRepo": {
          "type": "union",
          "refs": [
            "tools.ozone.moderation.defs#repoViewDetail",
            "tools.ozone.moderation.defs#repoViewNotFound"
          ]
        }
      }
    }
  }
}
```
