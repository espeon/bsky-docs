---
title: com.atproto.identity.resolveHandle
description: Reference for the com.atproto.identity.resolveHandle lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Resolves an atproto handle (hostname) to a DID. Does not necessarily bi-directionally verify against the the DID document.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  | The handle to resolve. | Format: `handle` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
**Possible Errors:**

- `HandleNotFound`: The resolution process confirmed that the handle does not resolve to any DID.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.resolveHandle",
  "defs": {
    "main": {
      "type": "query",
      "description": "Resolves an atproto handle (hostname) to a DID. Does not necessarily bi-directionally verify against the the DID document.",
      "parameters": {
        "type": "params",
        "required": [
          "handle"
        ],
        "properties": {
          "handle": {
            "type": "string",
            "format": "handle",
            "description": "The handle to resolve."
          }
        }
      },
      "output": {
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
      },
      "errors": [
        {
          "name": "HandleNotFound",
          "description": "The resolution process confirmed that the handle does not resolve to any DID."
        }
      ]
    }
  }
}
```
