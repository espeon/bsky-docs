---
title: com.atproto.admin.defs
description: Reference for the com.atproto.admin.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="statusattr"></a>
### `statusAttr`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `applied` | `boolean` | ✅  |  |  |
| `ref` | `string` | ❌  |  |  |

---

<a name="accountview"></a>
### `accountView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `email` | `string` | ❌  |  |  |
| `relatedRecords` | Array of `unknown` | ❌  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `invitedBy` | [`com.atproto.server.defs#inviteCode`](/lexicons/com/atproto/server/defs#inviteCode) | ❌  |  |  |
| `invites` | Array of [`com.atproto.server.defs#inviteCode`](/lexicons/com/atproto/server/defs#inviteCode) | ❌  |  |  |
| `invitesDisabled` | `boolean` | ❌  |  |  |
| `emailConfirmedAt` | `string` | ❌  |  | Format: `datetime` |
| `inviteNote` | `string` | ❌  |  |  |
| `deactivatedAt` | `string` | ❌  |  | Format: `datetime` |
| `threatSignatures` | Array of [`#threatSignature`](#threatsignature) | ❌  |  |  |

---

<a name="reporef"></a>
### `repoRef`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="repoblobref"></a>
### `repoBlobRef`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `recordUri` | `string` | ❌  |  | Format: `at-uri` |

---

<a name="threatsignature"></a>
### `threatSignature`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `property` | `string` | ✅  |  |  |
| `value` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.defs",
  "defs": {
    "statusAttr": {
      "type": "object",
      "required": [
        "applied"
      ],
      "properties": {
        "applied": {
          "type": "boolean"
        },
        "ref": {
          "type": "string"
        }
      }
    },
    "accountView": {
      "type": "object",
      "required": [
        "did",
        "handle",
        "indexedAt"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "email": {
          "type": "string"
        },
        "relatedRecords": {
          "type": "array",
          "items": {
            "type": "unknown"
          }
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "invitedBy": {
          "type": "ref",
          "ref": "com.atproto.server.defs#inviteCode"
        },
        "invites": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.server.defs#inviteCode"
          }
        },
        "invitesDisabled": {
          "type": "boolean"
        },
        "emailConfirmedAt": {
          "type": "string",
          "format": "datetime"
        },
        "inviteNote": {
          "type": "string"
        },
        "deactivatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "threatSignatures": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#threatSignature"
          }
        }
      }
    },
    "repoRef": {
      "type": "object",
      "required": [
        "did"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        }
      }
    },
    "repoBlobRef": {
      "type": "object",
      "required": [
        "did",
        "cid"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "recordUri": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "threatSignature": {
      "type": "object",
      "required": [
        "property",
        "value"
      ],
      "properties": {
        "property": {
          "type": "string"
        },
        "value": {
          "type": "string"
        }
      }
    }
  }
}
```
