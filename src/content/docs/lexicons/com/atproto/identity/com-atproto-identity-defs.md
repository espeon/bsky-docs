---
title: com.atproto.identity.defs
description: Reference for the com.atproto.identity.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="identityinfo"></a>
### `identityInfo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  | The validated handle of the account; or 'handle.invalid' if the handle did not bi-directionally match the DID document. | Format: `handle` |
| `didDoc` | `unknown` | ✅  | The complete DID document for the identity. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.defs",
  "defs": {
    "identityInfo": {
      "type": "object",
      "required": [
        "did",
        "handle",
        "didDoc"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "format": "handle",
          "description": "The validated handle of the account; or 'handle.invalid' if the handle did not bi-directionally match the DID document."
        },
        "didDoc": {
          "type": "unknown",
          "description": "The complete DID document for the identity."
        }
      }
    }
  }
}
```
