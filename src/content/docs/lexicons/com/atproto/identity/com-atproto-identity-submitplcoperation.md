---
title: com.atproto.identity.submitPlcOperation
description: Reference for the com.atproto.identity.submitPlcOperation lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Validates a PLC operation to ensure that it doesn't violate a service's constraints or get the identity into a bad state, then submits it to the PLC registry

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `operation` | `unknown` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.submitPlcOperation",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Validates a PLC operation to ensure that it doesn't violate a service's constraints or get the identity into a bad state, then submits it to the PLC registry",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "operation"
          ],
          "properties": {
            "operation": {
              "type": "unknown"
            }
          }
        }
      }
    }
  }
}
```
