---
title: com.atproto.identity.updateHandle
description: Reference for the com.atproto.identity.updateHandle lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Updates the current account's handle. Verifies handle validity, and updates did:plc document if necessary. Implemented by PDS, and requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  | The new handle. | Format: `handle` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.updateHandle",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Updates the current account's handle. Verifies handle validity, and updates did:plc document if necessary. Implemented by PDS, and requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle"
          ],
          "properties": {
            "handle": {
              "type": "string",
              "format": "handle",
              "description": "The new handle."
            }
          }
        }
      }
    }
  }
}
```
