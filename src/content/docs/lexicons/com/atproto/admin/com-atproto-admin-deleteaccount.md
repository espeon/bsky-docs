---
title: com.atproto.admin.deleteAccount
description: Reference for the com.atproto.admin.deleteAccount lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete a user account as an administrator.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.deleteAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete a user account as an administrator.",
      "input": {
        "encoding": "application/json",
        "schema": {
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
        }
      }
    }
  }
}
```
