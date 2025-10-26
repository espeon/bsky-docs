---
title: com.atproto.admin.disableAccountInvites
description: Reference for the com.atproto.admin.disableAccountInvites lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Disable an account from receiving new invite codes, but does not invalidate existing codes.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `account` | `string` | ✅  |  | Format: `did` |
| `note` | `string` | ❌  | Optional reason for disabled invites. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.disableAccountInvites",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Disable an account from receiving new invite codes, but does not invalidate existing codes.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "account"
          ],
          "properties": {
            "account": {
              "type": "string",
              "format": "did"
            },
            "note": {
              "type": "string",
              "description": "Optional reason for disabled invites."
            }
          }
        }
      }
    }
  }
}
```
