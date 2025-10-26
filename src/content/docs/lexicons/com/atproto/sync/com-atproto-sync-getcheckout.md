---
title: com.atproto.sync.getCheckout
description: Reference for the com.atproto.sync.getCheckout lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

DEPRECATED - please use com.atproto.sync.getRepo instead

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
**Output:**

- **Encoding:** `application/vnd.ipld.car`
- **Schema:**

_Schema not defined._

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getCheckout",
  "defs": {
    "main": {
      "type": "query",
      "description": "DEPRECATED - please use com.atproto.sync.getRepo instead",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo."
          }
        }
      },
      "output": {
        "encoding": "application/vnd.ipld.car"
      }
    }
  }
}
```
