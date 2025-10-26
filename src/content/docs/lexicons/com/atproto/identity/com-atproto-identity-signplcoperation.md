---
title: com.atproto.identity.signPlcOperation
description: Reference for the com.atproto.identity.signPlcOperation lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Signs a PLC operation to update some value(s) in the requesting DID's document.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `token` | `string` | ❌  | A token received through com.atproto.identity.requestPlcOperationSignature |  |
| `rotationKeys` | Array of `string` | ❌  |  |  |
| `alsoKnownAs` | Array of `string` | ❌  |  |  |
| `verificationMethods` | `unknown` | ❌  |  |  |
| `services` | `unknown` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `operation` | `unknown` | ✅  | A signed DID PLC operation. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.signPlcOperation",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Signs a PLC operation to update some value(s) in the requesting DID's document.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "token": {
              "description": "A token received through com.atproto.identity.requestPlcOperationSignature",
              "type": "string"
            },
            "rotationKeys": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "alsoKnownAs": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "verificationMethods": {
              "type": "unknown"
            },
            "services": {
              "type": "unknown"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "operation"
          ],
          "properties": {
            "operation": {
              "type": "unknown",
              "description": "A signed DID PLC operation."
            }
          }
        }
      }
    }
  }
}
```
