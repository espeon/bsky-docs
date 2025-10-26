---
title: com.atproto.temp.addReservedHandle
description: Reference for the com.atproto.temp.addReservedHandle lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Add a handle to the set of reserved handles.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

_(No properties defined)_

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.addReservedHandle",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Add a handle to the set of reserved handles.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle"
          ],
          "properties": {
            "handle": {
              "type": "string"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {}
        }
      }
    }
  }
}
```
