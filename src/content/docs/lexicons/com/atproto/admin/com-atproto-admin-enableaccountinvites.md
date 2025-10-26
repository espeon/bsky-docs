---
title: com.atproto.admin.enableAccountInvites
description: Reference for the com.atproto.admin.enableAccountInvites lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Re-enable an account's ability to receive invite codes.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `account` | `string` | ✅  |  | Format: `did` |
| `note` | `string` | ❌  | Optional reason for enabled invites. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.enableAccountInvites",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Re-enable an account's ability to receive invite codes.",
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
              "description": "Optional reason for enabled invites."
            }
          }
        }
      }
    }
  }
}
```
