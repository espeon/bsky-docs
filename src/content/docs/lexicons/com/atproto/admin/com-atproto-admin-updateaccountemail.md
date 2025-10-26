---
title: com.atproto.admin.updateAccountEmail
description: Reference for the com.atproto.admin.updateAccountEmail lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Administrative action to update an account's email.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `account` | `string` | ✅  | The handle or DID of the repo. | Format: `at-identifier` |
| `email` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to update an account's email.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "account",
            "email"
          ],
          "properties": {
            "account": {
              "type": "string",
              "format": "at-identifier",
              "description": "The handle or DID of the repo."
            },
            "email": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
