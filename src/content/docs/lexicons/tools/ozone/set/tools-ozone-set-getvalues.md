---
title: tools.ozone.set.getValues
description: Reference for the tools.ozone.set.getValues lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a specific set and its values

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 1000<br/>Default: `100` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `set` | [`tools.ozone.set.defs#setView`](/tools/ozone/set/defs#setView) | ✅  |  |  |
| `values` | Array of `string` | ✅  |  |  |
| `cursor` | `string` | ❌  |  |  |
**Possible Errors:**

- `SetNotFound`: set with the given name does not exist

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.getValues",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a specific set and its values",
      "parameters": {
        "type": "params",
        "required": [
          "name"
        ],
        "properties": {
          "name": {
            "type": "string"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 1000,
            "default": 100
          },
          "cursor": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "set",
            "values"
          ],
          "properties": {
            "set": {
              "type": "ref",
              "ref": "tools.ozone.set.defs#setView"
            },
            "values": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "cursor": {
              "type": "string"
            }
          }
        }
      },
      "errors": [
        {
          "name": "SetNotFound",
          "description": "set with the given name does not exist"
        }
      ]
    }
  }
}
```
