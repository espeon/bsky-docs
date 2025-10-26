---
title: com.atproto.server.defs
description: Reference for the com.atproto.server.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="invitecode"></a>
### `inviteCode`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `code` | `string` | ✅  |  |  |
| `available` | `integer` | ✅  |  |  |
| `disabled` | `boolean` | ✅  |  |  |
| `forAccount` | `string` | ✅  |  |  |
| `createdBy` | `string` | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `uses` | Array of [`#inviteCodeUse`](#invitecodeuse) | ✅  |  |  |

---

<a name="invitecodeuse"></a>
### `inviteCodeUse`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `usedBy` | `string` | ✅  |  | Format: `did` |
| `usedAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.defs",
  "defs": {
    "inviteCode": {
      "type": "object",
      "required": [
        "code",
        "available",
        "disabled",
        "forAccount",
        "createdBy",
        "createdAt",
        "uses"
      ],
      "properties": {
        "code": {
          "type": "string"
        },
        "available": {
          "type": "integer"
        },
        "disabled": {
          "type": "boolean"
        },
        "forAccount": {
          "type": "string"
        },
        "createdBy": {
          "type": "string"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "uses": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#inviteCodeUse"
          }
        }
      }
    },
    "inviteCodeUse": {
      "type": "object",
      "required": [
        "usedBy",
        "usedAt"
      ],
      "properties": {
        "usedBy": {
          "type": "string",
          "format": "did"
        },
        "usedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    }
  }
}
```
