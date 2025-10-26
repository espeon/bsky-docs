---
title: com.atproto.temp.dereferenceScope
description: Reference for the com.atproto.temp.dereferenceScope lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Allows finding the oauth permission scope from a reference

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `scope` | `string` | ✅  | The scope reference (starts with 'ref:') |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `scope` | `string` | ✅  | The full oauth permission scope |  |
**Possible Errors:**

- `InvalidScopeReference`: An invalid scope reference was provided.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.dereferenceScope",
  "defs": {
    "main": {
      "type": "query",
      "description": "Allows finding the oauth permission scope from a reference",
      "parameters": {
        "type": "params",
        "required": [
          "scope"
        ],
        "properties": {
          "scope": {
            "type": "string",
            "description": "The scope reference (starts with 'ref:')"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "scope"
          ],
          "properties": {
            "scope": {
              "type": "string",
              "description": "The full oauth permission scope"
            }
          }
        }
      },
      "errors": [
        {
          "name": "InvalidScopeReference",
          "description": "An invalid scope reference was provided."
        }
      ]
    }
  }
}
```
