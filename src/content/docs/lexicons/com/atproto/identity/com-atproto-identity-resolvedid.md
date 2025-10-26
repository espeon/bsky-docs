---
title: com.atproto.identity.resolveDid
description: Reference for the com.atproto.identity.resolveDid lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Resolves DID to DID document. Does not bi-directionally verify handle.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | DID to resolve. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `didDoc` | `unknown` | ✅  | The complete DID document for the identity. |  |
**Possible Errors:**

- `DidNotFound`: The DID resolution process confirmed that there is no current DID.
- `DidDeactivated`: The DID previously existed, but has been deactivated.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.resolveDid",
  "defs": {
    "main": {
      "type": "query",
      "description": "Resolves DID to DID document. Does not bi-directionally verify handle.",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "DID to resolve."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "didDoc"
          ],
          "properties": {
            "didDoc": {
              "type": "unknown",
              "description": "The complete DID document for the identity."
            }
          }
        }
      },
      "errors": [
        {
          "name": "DidNotFound",
          "description": "The DID resolution process confirmed that there is no current DID."
        },
        {
          "name": "DidDeactivated",
          "description": "The DID previously existed, but has been deactivated."
        }
      ]
    }
  }
}
```
