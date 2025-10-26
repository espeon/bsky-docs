---
title: com.atproto.admin.updateAccountHandle
description: Reference for the com.atproto.admin.updateAccountHandle lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Administrative action to update an account's handle.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountHandle",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to update an account's handle.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "did",
            "handle"
          ],
          "properties": {
            "did": {
              "type": "string",
              "format": "did"
            },
            "handle": {
              "type": "string",
              "format": "handle"
            }
          }
        }
      }
    }
  }
}
```
