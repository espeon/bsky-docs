---
title: app.bsky.graph.verification
description: Reference for the app.bsky.graph.verification lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record declaring a verification relationship between two accounts. Verifications are only considered valid by an app if issued by an account the app considers trusted.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  | DID of the subject the verification applies to. | Format: `did` |
| `handle` | `string` | ✅  | Handle of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current handle matches the one at the time of verifying. | Format: `handle` |
| `displayName` | `string` | ✅  | Display name of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current displayName matches the one at the time of verifying. |  |
| `createdAt` | `string` | ✅  | Date of when the verification was created. | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.verification",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record declaring a verification relationship between two accounts. Verifications are only considered valid by an app if issued by an account the app considers trusted.",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "subject",
          "handle",
          "displayName",
          "createdAt"
        ],
        "properties": {
          "subject": {
            "description": "DID of the subject the verification applies to.",
            "type": "string",
            "format": "did"
          },
          "handle": {
            "description": "Handle of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current handle matches the one at the time of verifying.",
            "type": "string",
            "format": "handle"
          },
          "displayName": {
            "description": "Display name of the subject the verification applies to at the moment of verifying, which might not be the same at the time of viewing. The verification is only valid if the current displayName matches the one at the time of verifying.",
            "type": "string"
          },
          "createdAt": {
            "description": "Date of when the verification was created.",
            "type": "string",
            "format": "datetime"
          }
        }
      }
    }
  }
}
```
