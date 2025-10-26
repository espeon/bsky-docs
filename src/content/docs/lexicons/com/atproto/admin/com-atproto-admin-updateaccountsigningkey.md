---
title: com.atproto.admin.updateAccountSigningKey
description: Reference for the com.atproto.admin.updateAccountSigningKey lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Administrative action to update an account's signing key in their Did document.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `signingKey` | `string` | ✅  | Did-key formatted public key | Format: `did` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountSigningKey",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to update an account's signing key in their Did document.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "did",
            "signingKey"
          ],
          "properties": {
            "did": {
              "type": "string",
              "format": "did"
            },
            "signingKey": {
              "type": "string",
              "format": "did",
              "description": "Did-key formatted public key"
            }
          }
        }
      }
    }
  }
}
```
